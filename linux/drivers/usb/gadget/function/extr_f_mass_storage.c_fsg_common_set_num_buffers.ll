; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_common_set_num_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_common_set_num_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_common = type { i32, %struct.fsg_buffhd* }
%struct.fsg_buffhd = type { %struct.fsg_buffhd*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FSG_BUFLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsg_common_set_num_buffers(%struct.fsg_common* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsg_common*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsg_buffhd*, align 8
  %7 = alloca %struct.fsg_buffhd*, align 8
  %8 = alloca i32, align 4
  store %struct.fsg_common* %0, %struct.fsg_common** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.fsg_buffhd* @kcalloc(i32 %9, i32 16, i32 %10)
  store %struct.fsg_buffhd* %11, %struct.fsg_buffhd** %7, align 8
  %12 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %7, align 8
  %13 = icmp ne %struct.fsg_buffhd* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %71

17:                                               ; preds = %2
  %18 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %7, align 8
  store %struct.fsg_buffhd* %18, %struct.fsg_buffhd** %6, align 8
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %8, align 4
  br label %28

20:                                               ; No predecessors!
  br label %21

21:                                               ; preds = %44, %20
  %22 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %23 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %22, i64 1
  %24 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %25 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %24, i32 0, i32 0
  store %struct.fsg_buffhd* %23, %struct.fsg_buffhd** %25, align 8
  %26 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %27 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %26, i32 1
  store %struct.fsg_buffhd* %27, %struct.fsg_buffhd** %6, align 8
  br label %28

28:                                               ; preds = %21, %17
  %29 = load i32, i32* @FSG_BUFLEN, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @kmalloc(i32 %29, i32 %30)
  %32 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %33 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %35 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  br label %65

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %21, label %48

48:                                               ; preds = %44
  %49 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %7, align 8
  %50 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %51 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %50, i32 0, i32 0
  store %struct.fsg_buffhd* %49, %struct.fsg_buffhd** %51, align 8
  %52 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %53 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %52, i32 0, i32 1
  %54 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %53, align 8
  %55 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %56 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @_fsg_common_free_buffers(%struct.fsg_buffhd* %54, i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %61 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %7, align 8
  %63 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %64 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %63, i32 0, i32 1
  store %struct.fsg_buffhd* %62, %struct.fsg_buffhd** %64, align 8
  store i32 0, i32* %3, align 4
  br label %71

65:                                               ; preds = %42
  %66 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %7, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @_fsg_common_free_buffers(%struct.fsg_buffhd* %66, i32 %67)
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %65, %48, %14
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.fsg_buffhd* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @_fsg_common_free_buffers(%struct.fsg_buffhd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
