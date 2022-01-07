; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_ism_query_rgid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_ism_query_rgid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smcd_dev = type { %struct.ism_dev* }
%struct.ism_dev = type { i32 }
%union.ism_query_rgid = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@ISM_QUERY_RGID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smcd_dev*, i32, i8*, i8*)* @ism_query_rgid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ism_query_rgid(%struct.smcd_dev* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.smcd_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ism_dev*, align 8
  %10 = alloca %union.ism_query_rgid, align 8
  store %struct.smcd_dev* %0, %struct.smcd_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.smcd_dev*, %struct.smcd_dev** %5, align 8
  %12 = getelementptr inbounds %struct.smcd_dev, %struct.smcd_dev* %11, i32 0, i32 0
  %13 = load %struct.ism_dev*, %struct.ism_dev** %12, align 8
  store %struct.ism_dev* %13, %struct.ism_dev** %9, align 8
  %14 = call i32 @memset(%union.ism_query_rgid* %10, i32 0, i32 32)
  %15 = load i32, i32* @ISM_QUERY_RGID, align 4
  %16 = bitcast %union.ism_query_rgid* %10 to %struct.TYPE_3__*
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = bitcast %union.ism_query_rgid* %10 to %struct.TYPE_3__*
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 32, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = bitcast %union.ism_query_rgid* %10 to %struct.TYPE_3__*
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = bitcast %union.ism_query_rgid* %10 to %struct.TYPE_3__*
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = bitcast %union.ism_query_rgid* %10 to %struct.TYPE_3__*
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.ism_dev*, %struct.ism_dev** %9, align 8
  %32 = call i32 @ism_cmd(%struct.ism_dev* %31, %union.ism_query_rgid* %10)
  ret i32 %32
}

declare dso_local i32 @memset(%union.ism_query_rgid*, i32, i32) #1

declare dso_local i32 @ism_cmd(%struct.ism_dev*, %union.ism_query_rgid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
