; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform_irq.c_vfio_set_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform_irq.c_vfio_set_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_platform_device = type { i32, %struct.vfio_platform_irq* }
%struct.vfio_platform_irq = type { i32, i32, %struct.eventfd_ctx*, i32 }
%struct.eventfd_ctx = type { i32 }

@IRQ_NOAUTOEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"vfio-irq[%d](%s)\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_platform_device*, i32, i32, i32)* @vfio_set_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_set_trigger(%struct.vfio_platform_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vfio_platform_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vfio_platform_irq*, align 8
  %11 = alloca %struct.eventfd_ctx*, align 8
  %12 = alloca i32, align 4
  store %struct.vfio_platform_device* %0, %struct.vfio_platform_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %6, align 8
  %14 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %13, i32 0, i32 1
  %15 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %15, i64 %17
  store %struct.vfio_platform_irq* %18, %struct.vfio_platform_irq** %10, align 8
  %19 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %10, align 8
  %20 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %19, i32 0, i32 2
  %21 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %20, align 8
  %22 = icmp ne %struct.eventfd_ctx* %21, null
  br i1 %22, label %23, label %44

23:                                               ; preds = %4
  %24 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %10, align 8
  %25 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %28 = call i32 @irq_clear_status_flags(i32 %26, i32 %27)
  %29 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %10, align 8
  %30 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %10, align 8
  %33 = call i32 @free_irq(i32 %31, %struct.vfio_platform_irq* %32)
  %34 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %10, align 8
  %35 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @kfree(i32 %36)
  %38 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %10, align 8
  %39 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %38, i32 0, i32 2
  %40 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %39, align 8
  %41 = call i32 @eventfd_ctx_put(%struct.eventfd_ctx* %40)
  %42 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %10, align 8
  %43 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %42, i32 0, i32 2
  store %struct.eventfd_ctx* null, %struct.eventfd_ctx** %43, align 8
  br label %44

44:                                               ; preds = %23, %4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %120

48:                                               ; preds = %44
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %10, align 8
  %51 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %6, align 8
  %54 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @kasprintf(i32 %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55)
  %57 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %10, align 8
  %58 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %10, align 8
  %60 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %48
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %120

66:                                               ; preds = %48
  %67 = load i32, i32* %8, align 4
  %68 = call %struct.eventfd_ctx* @eventfd_ctx_fdget(i32 %67)
  store %struct.eventfd_ctx* %68, %struct.eventfd_ctx** %11, align 8
  %69 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %11, align 8
  %70 = call i64 @IS_ERR(%struct.eventfd_ctx* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %10, align 8
  %74 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @kfree(i32 %75)
  %77 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %11, align 8
  %78 = call i32 @PTR_ERR(%struct.eventfd_ctx* %77)
  store i32 %78, i32* %5, align 4
  br label %120

79:                                               ; preds = %66
  %80 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %11, align 8
  %81 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %10, align 8
  %82 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %81, i32 0, i32 2
  store %struct.eventfd_ctx* %80, %struct.eventfd_ctx** %82, align 8
  %83 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %10, align 8
  %84 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %87 = call i32 @irq_set_status_flags(i32 %85, i32 %86)
  %88 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %10, align 8
  %89 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %10, align 8
  %93 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %10, align 8
  %96 = call i32 @request_irq(i32 %90, i32 %91, i32 0, i32 %94, %struct.vfio_platform_irq* %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %79
  %100 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %10, align 8
  %101 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @kfree(i32 %102)
  %104 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %11, align 8
  %105 = call i32 @eventfd_ctx_put(%struct.eventfd_ctx* %104)
  %106 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %10, align 8
  %107 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %106, i32 0, i32 2
  store %struct.eventfd_ctx* null, %struct.eventfd_ctx** %107, align 8
  %108 = load i32, i32* %12, align 4
  store i32 %108, i32* %5, align 4
  br label %120

109:                                              ; preds = %79
  %110 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %10, align 8
  %111 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %10, align 8
  %116 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @enable_irq(i32 %117)
  br label %119

119:                                              ; preds = %114, %109
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %119, %99, %72, %63, %47
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i32 @irq_clear_status_flags(i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.vfio_platform_irq*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @eventfd_ctx_put(%struct.eventfd_ctx*) #1

declare dso_local i32 @kasprintf(i32, i8*, i32, i32) #1

declare dso_local %struct.eventfd_ctx* @eventfd_ctx_fdget(i32) #1

declare dso_local i64 @IS_ERR(%struct.eventfd_ctx*) #1

declare dso_local i32 @PTR_ERR(%struct.eventfd_ctx*) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.vfio_platform_irq*) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
