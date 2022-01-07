; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_ioc_get_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_ioc_get_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { %struct.TYPE_11__, i32, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_7__ = type { i32 }
%struct.bfa_bsg_ioc_attr_s = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@BFAD_DRIVER_NAME = common dso_local global i32 0, align 4
@BFAD_DRIVER_VERSION = common dso_local global i32 0, align 4
@BFA_VERSION_LEN = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfad_s*, i8*)* @bfad_iocmd_ioc_get_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_iocmd_ioc_get_attr(%struct.bfad_s* %0, i8* %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfa_bsg_ioc_attr_s*, align 8
  %6 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.bfa_bsg_ioc_attr_s*
  store %struct.bfa_bsg_ioc_attr_s* %8, %struct.bfa_bsg_ioc_attr_s** %5, align 8
  %9 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %10 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %9, i32 0, i32 1
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %14 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.bfa_bsg_ioc_attr_s*, %struct.bfa_bsg_ioc_attr_s** %5, align 8
  %17 = getelementptr inbounds %struct.bfa_bsg_ioc_attr_s, %struct.bfa_bsg_ioc_attr_s* %16, i32 0, i32 1
  %18 = call i32 @bfa_ioc_get_attr(i32* %15, %struct.TYPE_12__* %17)
  %19 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %20 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %19, i32 0, i32 1
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load %struct.bfa_bsg_ioc_attr_s*, %struct.bfa_bsg_ioc_attr_s** %5, align 8
  %24 = getelementptr inbounds %struct.bfa_bsg_ioc_attr_s, %struct.bfa_bsg_ioc_attr_s* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BFAD_DRIVER_NAME, align 4
  %29 = call i32 @strcpy(i32 %27, i32 %28)
  %30 = load %struct.bfa_bsg_ioc_attr_s*, %struct.bfa_bsg_ioc_attr_s** %5, align 8
  %31 = getelementptr inbounds %struct.bfa_bsg_ioc_attr_s, %struct.bfa_bsg_ioc_attr_s* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @BFAD_DRIVER_VERSION, align 4
  %36 = load i32, i32* @BFA_VERSION_LEN, align 4
  %37 = call i32 @strlcpy(i32 %34, i32 %35, i32 %36)
  %38 = load %struct.bfa_bsg_ioc_attr_s*, %struct.bfa_bsg_ioc_attr_s** %5, align 8
  %39 = getelementptr inbounds %struct.bfa_bsg_ioc_attr_s, %struct.bfa_bsg_ioc_attr_s* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bfa_bsg_ioc_attr_s*, %struct.bfa_bsg_ioc_attr_s** %5, align 8
  %44 = getelementptr inbounds %struct.bfa_bsg_ioc_attr_s, %struct.bfa_bsg_ioc_attr_s* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @strcpy(i32 %42, i32 %47)
  %49 = load %struct.bfa_bsg_ioc_attr_s*, %struct.bfa_bsg_ioc_attr_s** %5, align 8
  %50 = getelementptr inbounds %struct.bfa_bsg_ioc_attr_s, %struct.bfa_bsg_ioc_attr_s* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.bfa_bsg_ioc_attr_s*, %struct.bfa_bsg_ioc_attr_s** %5, align 8
  %55 = getelementptr inbounds %struct.bfa_bsg_ioc_attr_s, %struct.bfa_bsg_ioc_attr_s* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @strcpy(i32 %53, i32 %58)
  %60 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %61 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = load %struct.bfa_bsg_ioc_attr_s*, %struct.bfa_bsg_ioc_attr_s** %5, align 8
  %65 = getelementptr inbounds %struct.bfa_bsg_ioc_attr_s, %struct.bfa_bsg_ioc_attr_s* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = call i32 @memcpy(%struct.TYPE_10__* %63, %struct.TYPE_11__* %68, i32 8)
  %70 = load %struct.bfa_bsg_ioc_attr_s*, %struct.bfa_bsg_ioc_attr_s** %5, align 8
  %71 = getelementptr inbounds %struct.bfa_bsg_ioc_attr_s, %struct.bfa_bsg_ioc_attr_s* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %74 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %73, i32 0, i32 0
  %75 = call i32 @memcpy(%struct.TYPE_10__* %72, %struct.TYPE_11__* %74, i32 4)
  %76 = load i32, i32* @BFA_STATUS_OK, align 4
  %77 = load %struct.bfa_bsg_ioc_attr_s*, %struct.bfa_bsg_ioc_attr_s** %5, align 8
  %78 = getelementptr inbounds %struct.bfa_bsg_ioc_attr_s, %struct.bfa_bsg_ioc_attr_s* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfa_ioc_get_attr(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
