; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_rpmsg_core.c_rpmsg_send_offchannel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_rpmsg_core.c_rpmsg_send_offchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_endpoint = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpmsg_send_offchannel(%struct.rpmsg_endpoint* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpmsg_endpoint*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.rpmsg_endpoint* %0, %struct.rpmsg_endpoint** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %7, align 8
  %13 = icmp ne %struct.rpmsg_endpoint* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %45

21:                                               ; preds = %5
  %22 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %7, align 8
  %23 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to i32 (%struct.rpmsg_endpoint*, i32, i32, i8*, i32)**
  %27 = load i32 (%struct.rpmsg_endpoint*, i32, i32, i8*, i32)*, i32 (%struct.rpmsg_endpoint*, i32, i32, i8*, i32)** %26, align 8
  %28 = icmp ne i32 (%struct.rpmsg_endpoint*, i32, i32, i8*, i32)* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %45

32:                                               ; preds = %21
  %33 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %7, align 8
  %34 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = bitcast {}** %36 to i32 (%struct.rpmsg_endpoint*, i32, i32, i8*, i32)**
  %38 = load i32 (%struct.rpmsg_endpoint*, i32, i32, i8*, i32)*, i32 (%struct.rpmsg_endpoint*, i32, i32, i8*, i32)** %37, align 8
  %39 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 %38(%struct.rpmsg_endpoint* %39, i32 %40, i32 %41, i8* %42, i32 %43)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %32, %29, %18
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
