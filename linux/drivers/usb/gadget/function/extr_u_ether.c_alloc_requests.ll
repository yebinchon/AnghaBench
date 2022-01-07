; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_ether.c_alloc_requests.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_ether.c_alloc_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eth_dev = type { i32, i32, i32 }
%struct.gether = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"can't alloc requests\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eth_dev*, %struct.gether*, i32)* @alloc_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_requests(%struct.eth_dev* %0, %struct.gether* %1, i32 %2) #0 {
  %4 = alloca %struct.eth_dev*, align 8
  %5 = alloca %struct.gether*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.eth_dev* %0, %struct.eth_dev** %4, align 8
  store %struct.gether* %1, %struct.gether** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %9 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %12 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %11, i32 0, i32 2
  %13 = load %struct.gether*, %struct.gether** %5, align 8
  %14 = getelementptr inbounds %struct.gether, %struct.gether* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @prealloc(i32* %12, i32 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %33

21:                                               ; preds = %3
  %22 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %23 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %22, i32 0, i32 1
  %24 = load %struct.gether*, %struct.gether** %5, align 8
  %25 = getelementptr inbounds %struct.gether, %struct.gether* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @prealloc(i32* %23, i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %33

32:                                               ; preds = %21
  br label %36

33:                                               ; preds = %31, %20
  %34 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %35 = call i32 @DBG(%struct.eth_dev* %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %32
  %37 = load %struct.eth_dev*, %struct.eth_dev** %4, align 8
  %38 = getelementptr inbounds %struct.eth_dev, %struct.eth_dev* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @prealloc(i32*, i32, i32) #1

declare dso_local i32 @DBG(%struct.eth_dev*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
