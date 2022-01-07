; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_ism_read_local_gid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_ism_read_local_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ism_dev = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%union.ism_read_gid = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@ISM_READ_GID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ism_dev*)* @ism_read_local_gid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ism_read_local_gid(%struct.ism_dev* %0) #0 {
  %2 = alloca %struct.ism_dev*, align 8
  %3 = alloca %union.ism_read_gid, align 4
  %4 = alloca i32, align 4
  store %struct.ism_dev* %0, %struct.ism_dev** %2, align 8
  %5 = call i32 @memset(%union.ism_read_gid* %3, i32 0, i32 8)
  %6 = load i32, i32* @ISM_READ_GID, align 4
  %7 = bitcast %union.ism_read_gid* %3 to %struct.TYPE_6__*
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i32 %6, i32* %9, align 4
  %10 = bitcast %union.ism_read_gid* %3 to %struct.TYPE_6__*
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 8, i32* %12, align 4
  %13 = load %struct.ism_dev*, %struct.ism_dev** %2, align 8
  %14 = call i32 @ism_cmd(%struct.ism_dev* %13, %union.ism_read_gid* %3)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %26

18:                                               ; preds = %1
  %19 = bitcast %union.ism_read_gid* %3 to %struct.TYPE_8__*
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ism_dev*, %struct.ism_dev** %2, align 8
  %23 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  br label %26

26:                                               ; preds = %18, %17
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @memset(%union.ism_read_gid*, i32, i32) #1

declare dso_local i32 @ism_cmd(%struct.ism_dev*, %union.ism_read_gid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
