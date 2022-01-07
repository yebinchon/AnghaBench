; ModuleID = '/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_rapl_read_data_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_rapl_read_data_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rapl_primitive_info = type { i32, i64, i32, i32, i32, i32 }
%struct.rapl_domain = type { i64, %struct.TYPE_6__*, %struct.TYPE_4__, i32* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i64 (i32, %struct.reg_action*)* }
%struct.reg_action = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }

@rpi = common dso_local global %struct.rapl_primitive_info* null, align 8
@RAPL_PRIMITIVE_DUMMY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FW_LOCK = common dso_local global i32 0, align 4
@POWER_HIGH_LOCK = common dso_local global i32 0, align 4
@RAPL_PRIMITIVE_DERIVED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to read reg 0x%llx on cpu %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rapl_domain*, i32, i32, i32*)* @rapl_read_data_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rapl_read_data_raw(%struct.rapl_domain* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rapl_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rapl_primitive_info*, align 8
  %12 = alloca %struct.reg_action, align 4
  %13 = alloca i32, align 4
  store %struct.rapl_domain* %0, %struct.rapl_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load %struct.rapl_primitive_info*, %struct.rapl_primitive_info** @rpi, align 8
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.rapl_primitive_info, %struct.rapl_primitive_info* %14, i64 %16
  store %struct.rapl_primitive_info* %17, %struct.rapl_primitive_info** %11, align 8
  %18 = load %struct.rapl_primitive_info*, %struct.rapl_primitive_info** %11, align 8
  %19 = getelementptr inbounds %struct.rapl_primitive_info, %struct.rapl_primitive_info* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load %struct.rapl_primitive_info*, %struct.rapl_primitive_info** %11, align 8
  %24 = getelementptr inbounds %struct.rapl_primitive_info, %struct.rapl_primitive_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @RAPL_PRIMITIVE_DUMMY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22, %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %137

32:                                               ; preds = %22
  %33 = load %struct.rapl_domain*, %struct.rapl_domain** %6, align 8
  %34 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.rapl_primitive_info*, %struct.rapl_primitive_info** %11, align 8
  %37 = getelementptr inbounds %struct.rapl_primitive_info, %struct.rapl_primitive_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.reg_action, %struct.reg_action* %12, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.reg_action, %struct.reg_action* %12, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %32
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %137

48:                                               ; preds = %32
  %49 = load %struct.rapl_domain*, %struct.rapl_domain** %6, align 8
  %50 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @FW_LOCK, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %48
  %58 = load %struct.rapl_domain*, %struct.rapl_domain** %6, align 8
  %59 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.rapl_domain*, %struct.rapl_domain** %6, align 8
  %66 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %77

71:                                               ; preds = %57
  %72 = load i32, i32* @POWER_HIGH_LOCK, align 4
  %73 = load %struct.rapl_primitive_info*, %struct.rapl_primitive_info** %11, align 8
  %74 = getelementptr inbounds %struct.rapl_primitive_info, %struct.rapl_primitive_info* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load %struct.rapl_primitive_info*, %struct.rapl_primitive_info** %11, align 8
  %76 = getelementptr inbounds %struct.rapl_primitive_info, %struct.rapl_primitive_info* %75, i32 0, i32 2
  store i32 63, i32* %76, align 8
  br label %77

77:                                               ; preds = %71, %57, %48
  %78 = load %struct.rapl_primitive_info*, %struct.rapl_primitive_info** %11, align 8
  %79 = getelementptr inbounds %struct.rapl_primitive_info, %struct.rapl_primitive_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @RAPL_PRIMITIVE_DERIVED, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %77
  %85 = load %struct.rapl_domain*, %struct.rapl_domain** %6, align 8
  %86 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %9, align 8
  store i32 %92, i32* %93, align 4
  store i32 0, i32* %5, align 4
  br label %137

94:                                               ; preds = %77
  %95 = load %struct.rapl_primitive_info*, %struct.rapl_primitive_info** %11, align 8
  %96 = getelementptr inbounds %struct.rapl_primitive_info, %struct.rapl_primitive_info* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.reg_action, %struct.reg_action* %12, i32 0, i32 2
  store i32 %97, i32* %98, align 4
  %99 = load %struct.rapl_domain*, %struct.rapl_domain** %6, align 8
  %100 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i64 (i32, %struct.reg_action*)*, i64 (i32, %struct.reg_action*)** %104, align 8
  %106 = load i32, i32* %13, align 4
  %107 = call i64 %105(i32 %106, %struct.reg_action* %12)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %94
  %110 = getelementptr inbounds %struct.reg_action, %struct.reg_action* %12, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %111, i32 %112)
  %114 = load i32, i32* @EIO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %5, align 4
  br label %137

116:                                              ; preds = %94
  %117 = getelementptr inbounds %struct.reg_action, %struct.reg_action* %12, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.rapl_primitive_info*, %struct.rapl_primitive_info** %11, align 8
  %120 = getelementptr inbounds %struct.rapl_primitive_info, %struct.rapl_primitive_info* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = ashr i32 %118, %121
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %116
  %126 = load %struct.rapl_domain*, %struct.rapl_domain** %6, align 8
  %127 = load %struct.rapl_primitive_info*, %struct.rapl_primitive_info** %11, align 8
  %128 = getelementptr inbounds %struct.rapl_primitive_info, %struct.rapl_primitive_info* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @rapl_unit_xlate(%struct.rapl_domain* %126, i32 %129, i32 %130, i32 0)
  %132 = load i32*, i32** %9, align 8
  store i32 %131, i32* %132, align 4
  br label %136

133:                                              ; preds = %116
  %134 = load i32, i32* %10, align 4
  %135 = load i32*, i32** %9, align 8
  store i32 %134, i32* %135, align 4
  br label %136

136:                                              ; preds = %133, %125
  store i32 0, i32* %5, align 4
  br label %137

137:                                              ; preds = %136, %109, %84, %45, %29
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @rapl_unit_xlate(%struct.rapl_domain*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
