; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_mmal-vchiq.c_vchiq_mmal_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_mmal-vchiq.c_vchiq_mmal_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_mmal_instance = type { i32, i32, i32, i32, i32, i32 }
%struct.service_creation = type { %struct.vchiq_mmal_instance*, i32, i32, i32 }

@vchiq_mmal_init.vchi_instance = internal global i32 0, align 4
@service_callback = common dso_local global i32 0, align 4
@VC_MMAL_SERVER_NAME = common dso_local global i32 0, align 4
@VC_MMAL_VER = common dso_local global i32 0, align 4
@VC_MMAL_MIN_VER = common dso_local global i32 0, align 4
@MMAL_MSG_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to initialise VCHI instance (status=%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to connect VCHI instance (status=%d)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"mmal-vchiq\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"Failed to open VCHI service connection (status=%d)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vchiq_mmal_init(%struct.vchiq_mmal_instance** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vchiq_mmal_instance**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vchiq_mmal_instance*, align 8
  %6 = alloca %struct.service_creation, align 8
  store %struct.vchiq_mmal_instance** %0, %struct.vchiq_mmal_instance*** %3, align 8
  %7 = getelementptr inbounds %struct.service_creation, %struct.service_creation* %6, i32 0, i32 0
  store %struct.vchiq_mmal_instance* null, %struct.vchiq_mmal_instance** %7, align 8
  %8 = getelementptr inbounds %struct.service_creation, %struct.service_creation* %6, i32 0, i32 1
  %9 = load i32, i32* @service_callback, align 4
  store i32 %9, i32* %8, align 8
  %10 = getelementptr inbounds %struct.service_creation, %struct.service_creation* %6, i32 0, i32 2
  %11 = load i32, i32* @VC_MMAL_SERVER_NAME, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.service_creation, %struct.service_creation* %6, i32 0, i32 3
  %13 = load i32, i32* @VC_MMAL_VER, align 4
  %14 = load i32, i32* @VC_MMAL_MIN_VER, align 4
  %15 = call i32 @VCHI_VERSION_EX(i32 %13, i32 %14)
  store i32 %15, i32* %12, align 8
  %16 = call i32 @BUILD_BUG_ON(i32 1)
  %17 = load i32, i32* @MMAL_MSG_MAX_SIZE, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ugt i64 4, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUILD_BUG_ON(i32 %20)
  %22 = call i32 @BUILD_BUG_ON(i32 1)
  %23 = call i32 @vchi_initialise(i32* @vchiq_mmal_init.vchi_instance)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %109

31:                                               ; preds = %1
  %32 = load i32, i32* @vchiq_mmal_init.vchi_instance, align 4
  %33 = call i32 @vchi_connect(i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %109

41:                                               ; preds = %31
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.vchiq_mmal_instance* @kzalloc(i32 24, i32 %42)
  store %struct.vchiq_mmal_instance* %43, %struct.vchiq_mmal_instance** %5, align 8
  %44 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %5, align 8
  %45 = icmp ne %struct.vchiq_mmal_instance* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %109

49:                                               ; preds = %41
  %50 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %5, align 8
  %51 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %50, i32 0, i32 5
  %52 = call i32 @mutex_init(i32* %51)
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = call i32 @vmalloc(i32 %53)
  %55 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %5, align 8
  %56 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %5, align 8
  %58 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %57, i32 0, i32 4
  %59 = call i32 @mutex_init(i32* %58)
  %60 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %5, align 8
  %61 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %60, i32 0, i32 3
  %62 = call i32 @idr_init_base(i32* %61, i32 1)
  %63 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %5, align 8
  %64 = getelementptr inbounds %struct.service_creation, %struct.service_creation* %6, i32 0, i32 0
  store %struct.vchiq_mmal_instance* %63, %struct.vchiq_mmal_instance** %64, align 8
  %65 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %66 = call i32 @alloc_ordered_workqueue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %5, align 8
  %68 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %5, align 8
  %70 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %49
  br label %100

74:                                               ; preds = %49
  %75 = load i32, i32* @vchiq_mmal_init.vchi_instance, align 4
  %76 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %5, align 8
  %77 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %76, i32 0, i32 2
  %78 = call i32 @vchi_service_open(i32 %75, %struct.service_creation* %6, i32* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  br label %91

84:                                               ; preds = %74
  %85 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %5, align 8
  %86 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @vchi_service_release(i32 %87)
  %89 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %5, align 8
  %90 = load %struct.vchiq_mmal_instance**, %struct.vchiq_mmal_instance*** %3, align 8
  store %struct.vchiq_mmal_instance* %89, %struct.vchiq_mmal_instance** %90, align 8
  store i32 0, i32* %2, align 4
  br label %109

91:                                               ; preds = %81
  %92 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %5, align 8
  %93 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @vchi_service_close(i32 %94)
  %96 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %5, align 8
  %97 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @destroy_workqueue(i32 %98)
  br label %100

100:                                              ; preds = %91, %73
  %101 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %5, align 8
  %102 = getelementptr inbounds %struct.vchiq_mmal_instance, %struct.vchiq_mmal_instance* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @vfree(i32 %103)
  %105 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %5, align 8
  %106 = call i32 @kfree(%struct.vchiq_mmal_instance* %105)
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %100, %84, %46, %36, %26
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @VCHI_VERSION_EX(i32, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @vchi_initialise(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @vchi_connect(i32) #1

declare dso_local %struct.vchiq_mmal_instance* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @vmalloc(i32) #1

declare dso_local i32 @idr_init_base(i32*, i32) #1

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local i32 @vchi_service_open(i32, %struct.service_creation*, i32*) #1

declare dso_local i32 @vchi_service_release(i32) #1

declare dso_local i32 @vchi_service_close(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @kfree(%struct.vchiq_mmal_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
