; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_common_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_common_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_common = type { i64, i64, i32, i32, i32, %struct.fsg_common**, i32 }
%struct.fsg_lun = type { i64, i64, i32, i32, i32, %struct.fsg_lun**, i32 }

@FSG_STATE_TERMINATED = common dso_local global i64 0, align 8
@FSG_STATE_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsg_common*)* @fsg_common_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsg_common_release(%struct.fsg_common* %0) #0 {
  %2 = alloca %struct.fsg_common*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsg_lun*, align 8
  store %struct.fsg_common* %0, %struct.fsg_common** %2, align 8
  %5 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %6 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @FSG_STATE_TERMINATED, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %12 = bitcast %struct.fsg_common* %11 to %struct.fsg_lun*
  %13 = load i32, i32* @FSG_STATE_EXIT, align 4
  %14 = call i32 @raise_exception(%struct.fsg_lun* %12, i32 %13)
  %15 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %16 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %15, i32 0, i32 6
  %17 = call i32 @wait_for_completion(i32* %16)
  br label %18

18:                                               ; preds = %10, %1
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %53, %18
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %22 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %21, i32 0, i32 5
  %23 = load %struct.fsg_common**, %struct.fsg_common*** %22, align 8
  %24 = bitcast %struct.fsg_common** %23 to %struct.fsg_lun**
  %25 = call i32 @ARRAY_SIZE(%struct.fsg_lun** %24)
  %26 = icmp slt i32 %20, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %19
  %28 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %29 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %28, i32 0, i32 5
  %30 = load %struct.fsg_common**, %struct.fsg_common*** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.fsg_common*, %struct.fsg_common** %30, i64 %32
  %34 = load %struct.fsg_common*, %struct.fsg_common** %33, align 8
  %35 = bitcast %struct.fsg_common* %34 to %struct.fsg_lun*
  store %struct.fsg_lun* %35, %struct.fsg_lun** %4, align 8
  %36 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %37 = icmp ne %struct.fsg_lun* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  br label %53

39:                                               ; preds = %27
  %40 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %41 = call i32 @fsg_lun_close(%struct.fsg_lun* %40)
  %42 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %43 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %42, i32 0, i32 4
  %44 = call i64 @device_is_registered(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %48 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %47, i32 0, i32 4
  %49 = call i32 @device_unregister(i32* %48)
  br label %50

50:                                               ; preds = %46, %39
  %51 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %52 = call i32 @kfree(%struct.fsg_lun* %51)
  br label %53

53:                                               ; preds = %50, %38
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %19

56:                                               ; preds = %19
  %57 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %58 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %61 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @_fsg_common_free_buffers(i32 %59, i32 %62)
  %64 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %65 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %56
  %69 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %70 = bitcast %struct.fsg_common* %69 to %struct.fsg_lun*
  %71 = call i32 @kfree(%struct.fsg_lun* %70)
  br label %72

72:                                               ; preds = %68, %56
  ret void
}

declare dso_local i32 @raise_exception(%struct.fsg_lun*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.fsg_lun**) #1

declare dso_local i32 @fsg_lun_close(%struct.fsg_lun*) #1

declare dso_local i64 @device_is_registered(i32*) #1

declare dso_local i32 @device_unregister(i32*) #1

declare dso_local i32 @kfree(%struct.fsg_lun*) #1

declare dso_local i32 @_fsg_common_free_buffers(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
