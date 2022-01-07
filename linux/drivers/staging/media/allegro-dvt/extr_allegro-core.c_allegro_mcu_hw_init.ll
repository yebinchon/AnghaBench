; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_mcu_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_mcu_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allegro_dev = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.fw_info = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"mcu did not send INIT after reset\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"failed to allocate %zu bytes for suballocator\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"mcu failed to configure sub-allocator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.allegro_dev*, %struct.fw_info*)* @allegro_mcu_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allegro_mcu_hw_init(%struct.allegro_dev* %0, %struct.fw_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.allegro_dev*, align 8
  %5 = alloca %struct.fw_info*, align 8
  %6 = alloca i32, align 4
  store %struct.allegro_dev* %0, %struct.allegro_dev** %4, align 8
  store %struct.fw_info* %1, %struct.fw_info** %5, align 8
  %7 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %8 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %9 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %8, i32 0, i32 3
  %10 = load %struct.fw_info*, %struct.fw_info** %5, align 8
  %11 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.fw_info*, %struct.fw_info** %5, align 8
  %14 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @allegro_mbox_init(%struct.allegro_dev* %7, i32* %9, i32 %12, i32 %15)
  %17 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %18 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %19 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %18, i32 0, i32 2
  %20 = load %struct.fw_info*, %struct.fw_info** %5, align 8
  %21 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fw_info*, %struct.fw_info** %5, align 8
  %24 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @allegro_mbox_init(%struct.allegro_dev* %17, i32* %19, i32 %22, i32 %25)
  %27 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %28 = call i32 @allegro_mcu_enable_interrupts(%struct.allegro_dev* %27)
  %29 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %30 = call i32 @allegro_mcu_start(%struct.allegro_dev* %29)
  %31 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %32 = call i32 @allegro_mcu_wait_for_init_timeout(%struct.allegro_dev* %31, i32 5000)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %2
  %36 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %37 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %36, i32 0, i32 1
  %38 = call i32 (i32*, i8*, ...) @v4l2_err(i32* %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %88

41:                                               ; preds = %2
  %42 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %43 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %44 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %43, i32 0, i32 0
  %45 = load %struct.fw_info*, %struct.fw_info** %5, align 8
  %46 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @allegro_alloc_buffer(%struct.allegro_dev* %42, %struct.TYPE_3__* %44, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %41
  %52 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %53 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %52, i32 0, i32 1
  %54 = load %struct.fw_info*, %struct.fw_info** %5, align 8
  %55 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32*, i8*, ...) @v4l2_err(i32* %53, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %85

58:                                               ; preds = %41
  %59 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %60 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %61 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %65 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @allegro_mcu_send_init(%struct.allegro_dev* %59, i32 %63, i32 %67)
  %69 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %70 = call i32 @allegro_mcu_wait_for_init_timeout(%struct.allegro_dev* %69, i32 5000)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %58
  %74 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %75 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %74, i32 0, i32 1
  %76 = call i32 (i32*, i8*, ...) @v4l2_err(i32* %75, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %80

79:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %92

80:                                               ; preds = %73
  %81 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %82 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %83 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %82, i32 0, i32 0
  %84 = call i32 @allegro_free_buffer(%struct.allegro_dev* %81, %struct.TYPE_3__* %83)
  br label %85

85:                                               ; preds = %80, %51
  %86 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %87 = call i32 @allegro_mcu_reset(%struct.allegro_dev* %86)
  br label %88

88:                                               ; preds = %85, %35
  %89 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %90 = call i32 @allegro_mcu_disable_interrupts(%struct.allegro_dev* %89)
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %79
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @allegro_mbox_init(%struct.allegro_dev*, i32*, i32, i32) #1

declare dso_local i32 @allegro_mcu_enable_interrupts(%struct.allegro_dev*) #1

declare dso_local i32 @allegro_mcu_start(%struct.allegro_dev*) #1

declare dso_local i32 @allegro_mcu_wait_for_init_timeout(%struct.allegro_dev*, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*, ...) #1

declare dso_local i32 @allegro_alloc_buffer(%struct.allegro_dev*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @allegro_mcu_send_init(%struct.allegro_dev*, i32, i32) #1

declare dso_local i32 @allegro_free_buffer(%struct.allegro_dev*, %struct.TYPE_3__*) #1

declare dso_local i32 @allegro_mcu_reset(%struct.allegro_dev*) #1

declare dso_local i32 @allegro_mcu_disable_interrupts(%struct.allegro_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
