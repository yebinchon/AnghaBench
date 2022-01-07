; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtl819x_HTProc.c_HTCCheck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtl819x_HTProc.c_HTCCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"HT CONTROL FILED EXIST!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HTCCheck(%struct.rtllib_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtllib_device*, align 8
  %5 = alloca i32*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %7 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @IsQoSDataFrame(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32*, i32** %5, align 8
  %18 = call i64 @Frame_Order(i32* %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i1 [ false, %12 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %26 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @netdev_dbg(i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %31

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %2
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %24
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @IsQoSDataFrame(i32*) #1

declare dso_local i64 @Frame_Order(i32*) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
