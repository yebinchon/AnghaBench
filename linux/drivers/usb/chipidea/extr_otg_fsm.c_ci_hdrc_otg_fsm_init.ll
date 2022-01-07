; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_otg_fsm.c_ci_hdrc_otg_fsm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_otg_fsm.c_ci_hdrc_otg_fsm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { %struct.TYPE_9__, %struct.TYPE_10__*, i32, i64, %struct.TYPE_8__, %struct.TYPE_7__, i32, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__*, i32, i64 }

@OTGSC_ID = common dso_local global i32 0, align 4
@OTG_STATE_UNDEFINED = common dso_local global i32 0, align 4
@ci_otg_ops = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Couldn't init OTG timers\0A\00", align 1
@NUM_OTG_FSM_TIMERS = common dso_local global i32 0, align 4
@inputs_attr_group = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Can't register sysfs attr group: %d\0A\00", align 1
@OTGSC_AVVIE = common dso_local global i32 0, align 4
@OTGSC_BSV = common dso_local global i32 0, align 4
@OTGSC_BSVIE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ci_hdrc_otg_fsm_init(%struct.ci_hdrc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ci_hdrc*, align 8
  %4 = alloca i32, align 4
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %6 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %5, i32 0, i32 7
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %11 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %10, i32 0, i32 7
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %14 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  store i64 %12, i64* %15, align 8
  br label %23

16:                                               ; preds = %1
  %17 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %18 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %21 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 8
  br label %23

23:                                               ; preds = %16, %9
  %24 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %25 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %24, i32 0, i32 4
  %26 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %27 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %28, align 8
  %29 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %30 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %29, i32 0, i32 5
  %31 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %32 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 7
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %33, align 8
  %34 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %35 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %38 = load i32, i32* @OTGSC_ID, align 4
  %39 = call i64 @hw_read_otgsc(%struct.ci_hdrc* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  %43 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %44 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @OTG_STATE_UNDEFINED, align 4
  %47 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %48 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 7
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32 %46, i32* %51, align 8
  %52 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %53 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 6
  store i32* @ci_otg_ops, i32** %54, align 8
  %55 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %56 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %59 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %58, i32 0, i32 1
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i32 @devm_kzalloc(%struct.TYPE_10__* %60, i32 1, i32 %61)
  %63 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %64 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 5
  store i32 %62, i32* %65, align 4
  %66 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %67 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %23
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %143

74:                                               ; preds = %23
  %75 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %76 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 4
  %78 = call i32 @mutex_init(i32* %77)
  %79 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %80 = call i32 @ci_otg_init_timers(%struct.ci_hdrc* %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %74
  %84 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %85 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %84, i32 0, i32 1
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = call i32 @dev_err(%struct.TYPE_10__* %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %2, align 4
  br label %143

89:                                               ; preds = %74
  %90 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %91 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %90, i32 0, i32 3
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* @NUM_OTG_FSM_TIMERS, align 4
  %93 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %94 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %96 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %95, i32 0, i32 1
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = call i32 @sysfs_create_group(i32* %98, i32* @inputs_attr_group)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %89
  %103 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %104 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %103, i32 0, i32 1
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @dev_dbg(%struct.TYPE_10__* %105, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %2, align 4
  br label %143

109:                                              ; preds = %89
  %110 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %111 = load i32, i32* @OTGSC_AVVIE, align 4
  %112 = load i32, i32* @OTGSC_AVVIE, align 4
  %113 = call i32 @hw_write_otgsc(%struct.ci_hdrc* %110, i32 %111, i32 %112)
  %114 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %115 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %142

119:                                              ; preds = %109
  %120 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %121 = load i32, i32* @OTGSC_BSV, align 4
  %122 = call i64 @hw_read_otgsc(%struct.ci_hdrc* %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 0, i32 1
  %126 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %127 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 2
  store i32 %125, i32* %128, align 8
  %129 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %130 = load i32, i32* @OTGSC_BSV, align 4
  %131 = call i64 @hw_read_otgsc(%struct.ci_hdrc* %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 1, i32 0
  %135 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %136 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 3
  store i32 %134, i32* %137, align 4
  %138 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %139 = load i32, i32* @OTGSC_BSVIE, align 4
  %140 = load i32, i32* @OTGSC_BSVIE, align 4
  %141 = call i32 @hw_write_otgsc(%struct.ci_hdrc* %138, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %119, %109
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %142, %102, %83, %71
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i64 @hw_read_otgsc(%struct.ci_hdrc*, i32) #1

declare dso_local i32 @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ci_otg_init_timers(%struct.ci_hdrc*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @hw_write_otgsc(%struct.ci_hdrc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
