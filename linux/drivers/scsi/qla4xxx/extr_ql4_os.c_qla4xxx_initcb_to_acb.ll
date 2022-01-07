; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_initcb_to_acb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_initcb_to_acb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addr_ctrl_blk = type { i32 }
%struct.addr_ctrl_blk_def = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.addr_ctrl_blk*)* @qla4xxx_initcb_to_acb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4xxx_initcb_to_acb(%struct.addr_ctrl_blk* %0) #0 {
  %2 = alloca %struct.addr_ctrl_blk*, align 8
  %3 = alloca %struct.addr_ctrl_blk_def*, align 8
  store %struct.addr_ctrl_blk* %0, %struct.addr_ctrl_blk** %2, align 8
  %4 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %2, align 8
  %5 = bitcast %struct.addr_ctrl_blk* %4 to %struct.addr_ctrl_blk_def*
  store %struct.addr_ctrl_blk_def* %5, %struct.addr_ctrl_blk_def** %3, align 8
  %6 = load %struct.addr_ctrl_blk_def*, %struct.addr_ctrl_blk_def** %3, align 8
  %7 = getelementptr inbounds %struct.addr_ctrl_blk_def, %struct.addr_ctrl_blk_def* %6, i32 0, i32 14
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @memset(i32 %8, i32 0, i32 4)
  %10 = load %struct.addr_ctrl_blk_def*, %struct.addr_ctrl_blk_def** %3, align 8
  %11 = getelementptr inbounds %struct.addr_ctrl_blk_def, %struct.addr_ctrl_blk_def* %10, i32 0, i32 13
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memset(i32 %12, i32 0, i32 4)
  %14 = load %struct.addr_ctrl_blk_def*, %struct.addr_ctrl_blk_def** %3, align 8
  %15 = getelementptr inbounds %struct.addr_ctrl_blk_def, %struct.addr_ctrl_blk_def* %14, i32 0, i32 12
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @memset(i32 %16, i32 0, i32 4)
  %18 = load %struct.addr_ctrl_blk_def*, %struct.addr_ctrl_blk_def** %3, align 8
  %19 = getelementptr inbounds %struct.addr_ctrl_blk_def, %struct.addr_ctrl_blk_def* %18, i32 0, i32 11
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @memset(i32 %20, i32 0, i32 4)
  %22 = load %struct.addr_ctrl_blk_def*, %struct.addr_ctrl_blk_def** %3, align 8
  %23 = getelementptr inbounds %struct.addr_ctrl_blk_def, %struct.addr_ctrl_blk_def* %22, i32 0, i32 10
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @memset(i32 %24, i32 0, i32 4)
  %26 = load %struct.addr_ctrl_blk_def*, %struct.addr_ctrl_blk_def** %3, align 8
  %27 = getelementptr inbounds %struct.addr_ctrl_blk_def, %struct.addr_ctrl_blk_def* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @memset(i32 %28, i32 0, i32 4)
  %30 = load %struct.addr_ctrl_blk_def*, %struct.addr_ctrl_blk_def** %3, align 8
  %31 = getelementptr inbounds %struct.addr_ctrl_blk_def, %struct.addr_ctrl_blk_def* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memset(i32 %32, i32 0, i32 4)
  %34 = load %struct.addr_ctrl_blk_def*, %struct.addr_ctrl_blk_def** %3, align 8
  %35 = getelementptr inbounds %struct.addr_ctrl_blk_def, %struct.addr_ctrl_blk_def* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @memset(i32 %36, i32 0, i32 4)
  %38 = load %struct.addr_ctrl_blk_def*, %struct.addr_ctrl_blk_def** %3, align 8
  %39 = getelementptr inbounds %struct.addr_ctrl_blk_def, %struct.addr_ctrl_blk_def* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memset(i32 %40, i32 0, i32 4)
  %42 = load %struct.addr_ctrl_blk_def*, %struct.addr_ctrl_blk_def** %3, align 8
  %43 = getelementptr inbounds %struct.addr_ctrl_blk_def, %struct.addr_ctrl_blk_def* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @memset(i32 %44, i32 0, i32 4)
  %46 = load %struct.addr_ctrl_blk_def*, %struct.addr_ctrl_blk_def** %3, align 8
  %47 = getelementptr inbounds %struct.addr_ctrl_blk_def, %struct.addr_ctrl_blk_def* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memset(i32 %48, i32 0, i32 4)
  %50 = load %struct.addr_ctrl_blk_def*, %struct.addr_ctrl_blk_def** %3, align 8
  %51 = getelementptr inbounds %struct.addr_ctrl_blk_def, %struct.addr_ctrl_blk_def* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @memset(i32 %52, i32 0, i32 4)
  %54 = load %struct.addr_ctrl_blk_def*, %struct.addr_ctrl_blk_def** %3, align 8
  %55 = getelementptr inbounds %struct.addr_ctrl_blk_def, %struct.addr_ctrl_blk_def* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @memset(i32 %56, i32 0, i32 4)
  %58 = load %struct.addr_ctrl_blk_def*, %struct.addr_ctrl_blk_def** %3, align 8
  %59 = getelementptr inbounds %struct.addr_ctrl_blk_def, %struct.addr_ctrl_blk_def* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @memset(i32 %60, i32 0, i32 4)
  %62 = load %struct.addr_ctrl_blk_def*, %struct.addr_ctrl_blk_def** %3, align 8
  %63 = getelementptr inbounds %struct.addr_ctrl_blk_def, %struct.addr_ctrl_blk_def* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @memset(i32 %64, i32 0, i32 4)
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
