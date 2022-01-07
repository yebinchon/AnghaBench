; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_rpmsg_core.c_rpmsg_sendto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_rpmsg_core.c_rpmsg_sendto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_endpoint = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpmsg_sendto(%struct.rpmsg_endpoint* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpmsg_endpoint*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rpmsg_endpoint* %0, %struct.rpmsg_endpoint** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %6, align 8
  %11 = icmp ne %struct.rpmsg_endpoint* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %42

19:                                               ; preds = %4
  %20 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %6, align 8
  %21 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.rpmsg_endpoint*, i8*, i32, i32)**
  %25 = load i32 (%struct.rpmsg_endpoint*, i8*, i32, i32)*, i32 (%struct.rpmsg_endpoint*, i8*, i32, i32)** %24, align 8
  %26 = icmp ne i32 (%struct.rpmsg_endpoint*, i8*, i32, i32)* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @ENXIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %42

30:                                               ; preds = %19
  %31 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %6, align 8
  %32 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = bitcast {}** %34 to i32 (%struct.rpmsg_endpoint*, i8*, i32, i32)**
  %36 = load i32 (%struct.rpmsg_endpoint*, i8*, i32, i32)*, i32 (%struct.rpmsg_endpoint*, i8*, i32, i32)** %35, align 8
  %37 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 %36(%struct.rpmsg_endpoint* %37, i8* %38, i32 %39, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %30, %27, %16
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
