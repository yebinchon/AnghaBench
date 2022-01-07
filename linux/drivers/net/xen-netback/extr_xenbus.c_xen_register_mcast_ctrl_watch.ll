; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_xen_register_mcast_ctrl_watch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_xen_register_mcast_ctrl_watch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i8* }
%struct.xenvif = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32* }

@.str = private unnamed_addr constant [29 x i8] c"Watch is already registered\0A\00", align 1
@EADDRINUSE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to allocate memory for watch\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"%s/request-multicast-control\00", align 1
@xen_mcast_ctrl_changed = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to set watcher %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, %struct.xenvif*)* @xen_register_mcast_ctrl_watch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_register_mcast_ctrl_watch(%struct.xenbus_device* %0, %struct.xenvif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca %struct.xenvif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %4, align 8
  store %struct.xenvif* %1, %struct.xenvif** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %10 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = sext i32 %12 to i64
  %14 = add i64 %13, 27
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %17 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EADDRINUSE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %71

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kmalloc(i32 %26, i32 %27)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %71

35:                                               ; preds = %25
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %39 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @snprintf(i8* %36, i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %44 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i8* %42, i8** %45, align 8
  %46 = load i32*, i32** @xen_mcast_ctrl_changed, align 8
  %47 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %48 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32* %46, i32** %49, align 8
  %50 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %51 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %50, i32 0, i32 0
  %52 = call i32 @register_xenbus_watch(%struct.TYPE_2__* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %35
  %56 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %57 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @kfree(i8* %61)
  %63 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %64 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i8* null, i8** %65, align 8
  %66 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %67 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %55, %35
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %31, %21
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pr_err_ratelimited(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @register_xenbus_watch(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
