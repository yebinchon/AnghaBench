; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c___usb_create_hcd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c___usb_create_hcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hc_driver = type { i32, i8*, i64 }
%struct.device = type { i32 }
%struct.usb_hcd = type { i32, i8*, %struct.hc_driver*, i32, i32, i32, %struct.TYPE_2__, i32, %struct.usb_hcd*, %struct.usb_hcd*, %struct.usb_hcd*, %struct.usb_hcd* }
%struct.TYPE_2__ = type { i8*, %struct.device*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"hcd address0 mutex alloc failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"hcd bandwidth mutex alloc failed\0A\00", align 1
@usb_port_peer_mutex = common dso_local global i32 0, align 4
@rh_timer_func = common dso_local global i32 0, align 4
@hcd_died_work = common dso_local global i32 0, align 4
@HCD_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"USB Host Controller\00", align 1
@hcd_resume_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_hcd* @__usb_create_hcd(%struct.hc_driver* %0, %struct.device* %1, %struct.device* %2, i8* %3, %struct.usb_hcd* %4) #0 {
  %6 = alloca %struct.usb_hcd*, align 8
  %7 = alloca %struct.hc_driver*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.usb_hcd*, align 8
  %12 = alloca %struct.usb_hcd*, align 8
  store %struct.hc_driver* %0, %struct.hc_driver** %7, align 8
  store %struct.device* %1, %struct.device** %8, align 8
  store %struct.device* %2, %struct.device** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.usb_hcd* %4, %struct.usb_hcd** %11, align 8
  %13 = load %struct.hc_driver*, %struct.hc_driver** %7, align 8
  %14 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = add i64 104, %15
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.usb_hcd* @kzalloc(i64 %16, i32 %17)
  store %struct.usb_hcd* %18, %struct.usb_hcd** %12, align 8
  %19 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %20 = icmp ne %struct.usb_hcd* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store %struct.usb_hcd* null, %struct.usb_hcd** %6, align 8
  br label %147

22:                                               ; preds = %5
  %23 = load %struct.usb_hcd*, %struct.usb_hcd** %11, align 8
  %24 = icmp eq %struct.usb_hcd* %23, null
  br i1 %24, label %25, label %71

25:                                               ; preds = %22
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kmalloc(i32 104, i32 %26)
  %28 = bitcast i8* %27 to %struct.usb_hcd*
  %29 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %30 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %29, i32 0, i32 11
  store %struct.usb_hcd* %28, %struct.usb_hcd** %30, align 8
  %31 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %32 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %31, i32 0, i32 11
  %33 = load %struct.usb_hcd*, %struct.usb_hcd** %32, align 8
  %34 = icmp ne %struct.usb_hcd* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %25
  %36 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %37 = call i32 @kfree(%struct.usb_hcd* %36)
  %38 = load %struct.device*, %struct.device** %9, align 8
  %39 = call i32 @dev_dbg(%struct.device* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store %struct.usb_hcd* null, %struct.usb_hcd** %6, align 8
  br label %147

40:                                               ; preds = %25
  %41 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %42 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %41, i32 0, i32 11
  %43 = load %struct.usb_hcd*, %struct.usb_hcd** %42, align 8
  %44 = call i32 @mutex_init(%struct.usb_hcd* %43)
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @kmalloc(i32 104, i32 %45)
  %47 = bitcast i8* %46 to %struct.usb_hcd*
  %48 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %49 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %48, i32 0, i32 10
  store %struct.usb_hcd* %47, %struct.usb_hcd** %49, align 8
  %50 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %51 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %50, i32 0, i32 10
  %52 = load %struct.usb_hcd*, %struct.usb_hcd** %51, align 8
  %53 = icmp ne %struct.usb_hcd* %52, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %40
  %55 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %56 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %55, i32 0, i32 11
  %57 = load %struct.usb_hcd*, %struct.usb_hcd** %56, align 8
  %58 = call i32 @kfree(%struct.usb_hcd* %57)
  %59 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %60 = call i32 @kfree(%struct.usb_hcd* %59)
  %61 = load %struct.device*, %struct.device** %9, align 8
  %62 = call i32 @dev_dbg(%struct.device* %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store %struct.usb_hcd* null, %struct.usb_hcd** %6, align 8
  br label %147

63:                                               ; preds = %40
  %64 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %65 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %64, i32 0, i32 10
  %66 = load %struct.usb_hcd*, %struct.usb_hcd** %65, align 8
  %67 = call i32 @mutex_init(%struct.usb_hcd* %66)
  %68 = load %struct.device*, %struct.device** %9, align 8
  %69 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %70 = call i32 @dev_set_drvdata(%struct.device* %68, %struct.usb_hcd* %69)
  br label %96

71:                                               ; preds = %22
  %72 = call i32 @mutex_lock(i32* @usb_port_peer_mutex)
  %73 = load %struct.usb_hcd*, %struct.usb_hcd** %11, align 8
  %74 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %73, i32 0, i32 11
  %75 = load %struct.usb_hcd*, %struct.usb_hcd** %74, align 8
  %76 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %77 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %76, i32 0, i32 11
  store %struct.usb_hcd* %75, %struct.usb_hcd** %77, align 8
  %78 = load %struct.usb_hcd*, %struct.usb_hcd** %11, align 8
  %79 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %78, i32 0, i32 10
  %80 = load %struct.usb_hcd*, %struct.usb_hcd** %79, align 8
  %81 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %82 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %81, i32 0, i32 10
  store %struct.usb_hcd* %80, %struct.usb_hcd** %82, align 8
  %83 = load %struct.usb_hcd*, %struct.usb_hcd** %11, align 8
  %84 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %85 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %84, i32 0, i32 9
  store %struct.usb_hcd* %83, %struct.usb_hcd** %85, align 8
  %86 = load %struct.usb_hcd*, %struct.usb_hcd** %11, align 8
  %87 = load %struct.usb_hcd*, %struct.usb_hcd** %11, align 8
  %88 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %87, i32 0, i32 9
  store %struct.usb_hcd* %86, %struct.usb_hcd** %88, align 8
  %89 = load %struct.usb_hcd*, %struct.usb_hcd** %11, align 8
  %90 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %91 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %90, i32 0, i32 8
  store %struct.usb_hcd* %89, %struct.usb_hcd** %91, align 8
  %92 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %93 = load %struct.usb_hcd*, %struct.usb_hcd** %11, align 8
  %94 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %93, i32 0, i32 8
  store %struct.usb_hcd* %92, %struct.usb_hcd** %94, align 8
  %95 = call i32 @mutex_unlock(i32* @usb_port_peer_mutex)
  br label %96

96:                                               ; preds = %71, %63
  %97 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %98 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %97, i32 0, i32 7
  %99 = call i32 @kref_init(i32* %98)
  %100 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %101 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %100, i32 0, i32 6
  %102 = call i32 @usb_bus_init(%struct.TYPE_2__* %101)
  %103 = load %struct.device*, %struct.device** %9, align 8
  %104 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %105 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  store %struct.device* %103, %struct.device** %106, align 8
  %107 = load %struct.device*, %struct.device** %8, align 8
  %108 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %109 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %108, i32 0, i32 6
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  store %struct.device* %107, %struct.device** %110, align 8
  %111 = load i8*, i8** %10, align 8
  %112 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %113 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %112, i32 0, i32 6
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i8* %111, i8** %114, align 8
  %115 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %116 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %115, i32 0, i32 5
  %117 = load i32, i32* @rh_timer_func, align 4
  %118 = call i32 @timer_setup(i32* %116, i32 %117, i32 0)
  %119 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %120 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %119, i32 0, i32 3
  %121 = load i32, i32* @hcd_died_work, align 4
  %122 = call i32 @INIT_WORK(i32* %120, i32 %121)
  %123 = load %struct.hc_driver*, %struct.hc_driver** %7, align 8
  %124 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %125 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %124, i32 0, i32 2
  store %struct.hc_driver* %123, %struct.hc_driver** %125, align 8
  %126 = load %struct.hc_driver*, %struct.hc_driver** %7, align 8
  %127 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @HCD_MASK, align 4
  %130 = and i32 %128, %129
  %131 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %132 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load %struct.hc_driver*, %struct.hc_driver** %7, align 8
  %134 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %141

137:                                              ; preds = %96
  %138 = load %struct.hc_driver*, %struct.hc_driver** %7, align 8
  %139 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  br label %142

141:                                              ; preds = %96
  br label %142

142:                                              ; preds = %141, %137
  %143 = phi i8* [ %140, %137 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), %141 ]
  %144 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %145 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %144, i32 0, i32 1
  store i8* %143, i8** %145, align 8
  %146 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  store %struct.usb_hcd* %146, %struct.usb_hcd** %6, align 8
  br label %147

147:                                              ; preds = %142, %54, %35, %21
  %148 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  ret %struct.usb_hcd* %148
}

declare dso_local %struct.usb_hcd* @kzalloc(i64, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.usb_hcd*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @mutex_init(%struct.usb_hcd*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.usb_hcd*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @usb_bus_init(%struct.TYPE_2__*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
