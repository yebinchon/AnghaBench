; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_do_start_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_do_start_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_common = type { i32*, i32, %struct.fsg_lun* }
%struct.fsg_lun = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SS_INVALID_COMMAND = common dso_local global i32 0, align 4
@SS_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SS_MEDIUM_NOT_PRESENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unload attempt prevented\0A\00", align 1
@SS_MEDIUM_REMOVAL_PREVENTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_common*)* @do_start_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_start_stop(%struct.fsg_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsg_common*, align 8
  %4 = alloca %struct.fsg_lun*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fsg_common* %0, %struct.fsg_common** %3, align 8
  %7 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %8 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %7, i32 0, i32 2
  %9 = load %struct.fsg_lun*, %struct.fsg_lun** %8, align 8
  store %struct.fsg_lun* %9, %struct.fsg_lun** %4, align 8
  %10 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %11 = icmp ne %struct.fsg_lun* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %108

15:                                               ; preds = %1
  %16 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %17 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @SS_INVALID_COMMAND, align 4
  %22 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %23 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %108

26:                                               ; preds = %15
  %27 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %28 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, -2
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %26
  %35 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %36 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, -4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %34, %26
  %43 = load i32, i32* @SS_INVALID_FIELD_IN_CDB, align 4
  %44 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %45 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %108

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %52 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 2
  store i32 %56, i32* %5, align 4
  %57 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %58 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 1
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %50
  %66 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %67 = call i32 @fsg_lun_is_open(%struct.fsg_lun* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @SS_MEDIUM_NOT_PRESENT, align 4
  %71 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %72 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %108

75:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %108

76:                                               ; preds = %50
  %77 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %78 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %83 = call i32 @LDBG(%struct.fsg_lun* %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* @SS_MEDIUM_REMOVAL_PREVENTED, align 4
  %85 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %86 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %108

89:                                               ; preds = %76
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  store i32 0, i32* %2, align 4
  br label %108

93:                                               ; preds = %89
  %94 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %95 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %94, i32 0, i32 1
  %96 = call i32 @up_read(i32* %95)
  %97 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %98 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %97, i32 0, i32 1
  %99 = call i32 @down_write(i32* %98)
  %100 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %101 = call i32 @fsg_lun_close(%struct.fsg_lun* %100)
  %102 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %103 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %102, i32 0, i32 1
  %104 = call i32 @up_write(i32* %103)
  %105 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %106 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %105, i32 0, i32 1
  %107 = call i32 @down_read(i32* %106)
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %93, %92, %81, %75, %69, %42, %20, %12
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @fsg_lun_is_open(%struct.fsg_lun*) #1

declare dso_local i32 @LDBG(%struct.fsg_lun*, i8*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @fsg_lun_close(%struct.fsg_lun*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @down_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
