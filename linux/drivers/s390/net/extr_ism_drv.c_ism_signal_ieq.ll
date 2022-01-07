; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_ism_signal_ieq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_ism_signal_ieq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smcd_dev = type { %struct.ism_dev* }
%struct.ism_dev = type { i32 }
%union.ism_sig_ieq = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@ISM_SIGNAL_IEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smcd_dev*, i8*, i8*, i8*, i8*)* @ism_signal_ieq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ism_signal_ieq(%struct.smcd_dev* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.smcd_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ism_dev*, align 8
  %12 = alloca %union.ism_sig_ieq, align 8
  store %struct.smcd_dev* %0, %struct.smcd_dev** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load %struct.smcd_dev*, %struct.smcd_dev** %6, align 8
  %14 = getelementptr inbounds %struct.smcd_dev, %struct.smcd_dev* %13, i32 0, i32 0
  %15 = load %struct.ism_dev*, %struct.ism_dev** %14, align 8
  store %struct.ism_dev* %15, %struct.ism_dev** %11, align 8
  %16 = call i32 @memset(%union.ism_sig_ieq* %12, i32 0, i32 40)
  %17 = load i32, i32* @ISM_SIGNAL_IEQ, align 4
  %18 = bitcast %union.ism_sig_ieq* %12 to %struct.TYPE_3__*
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = bitcast %union.ism_sig_ieq* %12 to %struct.TYPE_3__*
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 40, i32* %23, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast %union.ism_sig_ieq* %12 to %struct.TYPE_3__*
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = bitcast %union.ism_sig_ieq* %12 to %struct.TYPE_3__*
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = bitcast %union.ism_sig_ieq* %12 to %struct.TYPE_3__*
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = bitcast %union.ism_sig_ieq* %12 to %struct.TYPE_3__*
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load %struct.ism_dev*, %struct.ism_dev** %11, align 8
  %37 = call i32 @ism_cmd(%struct.ism_dev* %36, %union.ism_sig_ieq* %12)
  ret i32 %37
}

declare dso_local i32 @memset(%union.ism_sig_ieq*, i32, i32) #1

declare dso_local i32 @ism_cmd(%struct.ism_dev*, %union.ism_sig_ieq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
