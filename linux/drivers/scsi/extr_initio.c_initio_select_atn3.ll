; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_select_atn3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_select_atn3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i64, %struct.scsi_ctrl_blk*, i32*, i32* }
%struct.scsi_ctrl_blk = type { i32, i32, i64, i32*, i32, i32, i32, i32 }

@SCB_SELECT = common dso_local global i32 0, align 4
@TUL_SFifo = common dso_local global i64 0, align 8
@TSC_SEL_ATN3 = common dso_local global i32 0, align 4
@TUL_SCmd = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.initio_host*, %struct.scsi_ctrl_blk*)* @initio_select_atn3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initio_select_atn3(%struct.initio_host* %0, %struct.scsi_ctrl_blk* %1) #0 {
  %3 = alloca %struct.initio_host*, align 8
  %4 = alloca %struct.scsi_ctrl_blk*, align 8
  %5 = alloca i32, align 4
  store %struct.initio_host* %0, %struct.initio_host** %3, align 8
  store %struct.scsi_ctrl_blk* %1, %struct.scsi_ctrl_blk** %4, align 8
  %6 = load i32, i32* @SCB_SELECT, align 4
  %7 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %8 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %12 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %11, i32 0, i32 0
  store i32 2, i32* %12, align 8
  %13 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %17 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TUL_SFifo, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outb(i32 %15, i64 %20)
  %22 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %23 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %26 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TUL_SFifo, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @outb(i32 %24, i64 %29)
  %31 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %32 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %35 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TUL_SFifo, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @outb(i32 %33, i64 %38)
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %60, %2
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %43 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %40
  %47 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %48 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %55 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TUL_SFifo, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @outb(i32 %53, i64 %58)
  br label %60

60:                                               ; preds = %46
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %40

63:                                               ; preds = %40
  %64 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %65 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %68 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %72 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %71, i32 0, i32 3
  store i32* %70, i32** %72, align 8
  %73 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %74 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %75 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %74, i32 0, i32 1
  store %struct.scsi_ctrl_blk* %73, %struct.scsi_ctrl_blk** %75, align 8
  %76 = load i32, i32* @TSC_SEL_ATN3, align 4
  %77 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %78 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @TUL_SCmd, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @outb(i32 %76, i64 %81)
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
