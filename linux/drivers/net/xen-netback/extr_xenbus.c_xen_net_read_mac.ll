; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_xen_net_read_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_xen_net_read_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }

@XBT_NIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, i32*)* @xen_net_read_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_net_read_mac(%struct.xenbus_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* @XBT_NIL, align 4
  %11 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %12 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @xenbus_read(i32 %10, i32 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %14, i8** %6, align 8
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @IS_ERR(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @PTR_ERR(i8* %19)
  store i32 %20, i32* %3, align 4
  br label %61

21:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %55, %21
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @ETH_ALEN, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %22
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @simple_strtoul(i8* %27, i8** %7, i32 16)
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %28, i32* %32, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = icmp eq i8* %33, %34
  br i1 %35, label %47, label %36

36:                                               ; preds = %26
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp eq i32 %40, %42
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 0, i32 58
  %46 = icmp ne i32 %39, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %36, %26
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @kfree(i8* %48)
  %50 = load i32, i32* @ENOENT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %61

52:                                               ; preds = %36
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  store i8* %54, i8** %6, align 8
  br label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %22

58:                                               ; preds = %22
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @kfree(i8* %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %47, %18
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i8* @xenbus_read(i32, i32, i8*, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
