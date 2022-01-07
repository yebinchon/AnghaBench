; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla25xx_ctrlvp_iocb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla25xx_ctrlvp_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.vp_ctrl_entry_24xx = type { i32, i32*, i8*, i8*, i32, i32 }

@VP_CTRL_IOCB_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.vp_ctrl_entry_24xx*)* @qla25xx_ctrlvp_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla25xx_ctrlvp_iocb(%struct.TYPE_11__* %0, %struct.vp_ctrl_entry_24xx* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.vp_ctrl_entry_24xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.vp_ctrl_entry_24xx* %1, %struct.vp_ctrl_entry_24xx** %4, align 8
  %7 = load i32, i32* @VP_CTRL_IOCB_TYPE, align 4
  %8 = load %struct.vp_ctrl_entry_24xx*, %struct.vp_ctrl_entry_24xx** %4, align 8
  %9 = getelementptr inbounds %struct.vp_ctrl_entry_24xx, %struct.vp_ctrl_entry_24xx* %8, i32 0, i32 5
  store i32 %7, i32* %9, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.vp_ctrl_entry_24xx*, %struct.vp_ctrl_entry_24xx** %4, align 8
  %14 = getelementptr inbounds %struct.vp_ctrl_entry_24xx, %struct.vp_ctrl_entry_24xx* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 8
  %15 = load %struct.vp_ctrl_entry_24xx*, %struct.vp_ctrl_entry_24xx** %4, align 8
  %16 = getelementptr inbounds %struct.vp_ctrl_entry_24xx, %struct.vp_ctrl_entry_24xx* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @cpu_to_le16(i32 %23)
  %25 = load %struct.vp_ctrl_entry_24xx*, %struct.vp_ctrl_entry_24xx** %4, align 8
  %26 = getelementptr inbounds %struct.vp_ctrl_entry_24xx, %struct.vp_ctrl_entry_24xx* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = call i8* @cpu_to_le16(i32 1)
  %28 = load %struct.vp_ctrl_entry_24xx*, %struct.vp_ctrl_entry_24xx** %4, align 8
  %29 = getelementptr inbounds %struct.vp_ctrl_entry_24xx, %struct.vp_ctrl_entry_24xx* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sdiv i32 %37, 8
  store i32 %38, i32* %5, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 1
  %47 = and i32 %46, 7
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = shl i32 1, %48
  %50 = load %struct.vp_ctrl_entry_24xx*, %struct.vp_ctrl_entry_24xx** %4, align 8
  %51 = getelementptr inbounds %struct.vp_ctrl_entry_24xx, %struct.vp_ctrl_entry_24xx* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %49
  store i32 %57, i32* %55, align 4
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
