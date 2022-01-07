; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_xen_register_credit_watch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_xen_register_credit_watch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i8* }
%struct.xenvif = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32* }

@EADDRINUSE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s/rate\00", align 1
@xen_net_rate_changed = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to set watcher %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, %struct.xenvif*)* @xen_register_credit_watch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_register_credit_watch(%struct.xenbus_device* %0, %struct.xenvif* %1) #0 {
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
  %14 = add i64 %13, 6
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %17 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EADDRINUSE, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %69

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kmalloc(i32 %25, i32 %26)
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %69

33:                                               ; preds = %24
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %37 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @snprintf(i8* %34, i32 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %42 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i8* %40, i8** %43, align 8
  %44 = load i32*, i32** @xen_net_rate_changed, align 8
  %45 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %46 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32* %44, i32** %47, align 8
  %48 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %49 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %48, i32 0, i32 0
  %50 = call i32 @register_xenbus_watch(%struct.TYPE_2__* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %33
  %54 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %55 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @kfree(i8* %59)
  %61 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %62 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i8* null, i8** %63, align 8
  %64 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %65 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %53, %33
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %30, %21
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @register_xenbus_watch(%struct.TYPE_2__*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
