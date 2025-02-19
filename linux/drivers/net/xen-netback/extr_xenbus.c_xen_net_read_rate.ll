; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_xen_net_read_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_xen_net_read_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }

@XBT_NIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Failed to parse network rate limit. Traffic unlimited.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenbus_device*, i64*, i64*)* @xen_net_read_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_net_read_rate(%struct.xenbus_device* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load i64*, i64** %5, align 8
  store i64 -1, i64* %12, align 8
  %13 = load i64*, i64** %6, align 8
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @XBT_NIL, align 4
  %15 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %16 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @xenbus_read(i32 %14, i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = call i64 @IS_ERR(i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %61

23:                                               ; preds = %3
  %24 = load i8*, i8** %11, align 8
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 @simple_strtoul(i8* %25, i8** %8, i32 10)
  store i64 %26, i64* %9, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %23
  %31 = load i8*, i8** %8, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 44
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %23
  br label %57

36:                                               ; preds = %30
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i64 @simple_strtoul(i8* %39, i8** %8, i32 10)
  store i64 %40, i64* %10, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = icmp eq i8* %41, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %36
  %45 = load i8*, i8** %8, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %36
  br label %57

50:                                               ; preds = %44
  %51 = load i64, i64* %9, align 8
  %52 = load i64*, i64** %5, align 8
  store i64 %51, i64* %52, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64*, i64** %6, align 8
  store i64 %53, i64* %54, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @kfree(i8* %55)
  br label %61

57:                                               ; preds = %49, %35
  %58 = call i32 @pr_warn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @kfree(i8* %59)
  br label %61

61:                                               ; preds = %57, %50, %22
  ret void
}

declare dso_local i8* @xenbus_read(i32, i32, i8*, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
