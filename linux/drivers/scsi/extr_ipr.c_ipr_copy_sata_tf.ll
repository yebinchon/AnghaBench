; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_copy_sata_tf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_copy_sata_tf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_ioarcb_ata_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_ioarcb_ata_regs*, %struct.ata_taskfile*)* @ipr_copy_sata_tf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_copy_sata_tf(%struct.ipr_ioarcb_ata_regs* %0, %struct.ata_taskfile* %1) #0 {
  %3 = alloca %struct.ipr_ioarcb_ata_regs*, align 8
  %4 = alloca %struct.ata_taskfile*, align 8
  store %struct.ipr_ioarcb_ata_regs* %0, %struct.ipr_ioarcb_ata_regs** %3, align 8
  store %struct.ata_taskfile* %1, %struct.ata_taskfile** %4, align 8
  %5 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %6 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %5, i32 0, i32 12
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ipr_ioarcb_ata_regs*, %struct.ipr_ioarcb_ata_regs** %3, align 8
  %9 = getelementptr inbounds %struct.ipr_ioarcb_ata_regs, %struct.ipr_ioarcb_ata_regs* %8, i32 0, i32 12
  store i32 %7, i32* %9, align 4
  %10 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %11 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %10, i32 0, i32 11
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ipr_ioarcb_ata_regs*, %struct.ipr_ioarcb_ata_regs** %3, align 8
  %14 = getelementptr inbounds %struct.ipr_ioarcb_ata_regs, %struct.ipr_ioarcb_ata_regs* %13, i32 0, i32 11
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %16 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ipr_ioarcb_ata_regs*, %struct.ipr_ioarcb_ata_regs** %3, align 8
  %19 = getelementptr inbounds %struct.ipr_ioarcb_ata_regs, %struct.ipr_ioarcb_ata_regs* %18, i32 0, i32 10
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %21 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ipr_ioarcb_ata_regs*, %struct.ipr_ioarcb_ata_regs** %3, align 8
  %24 = getelementptr inbounds %struct.ipr_ioarcb_ata_regs, %struct.ipr_ioarcb_ata_regs* %23, i32 0, i32 9
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %26 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ipr_ioarcb_ata_regs*, %struct.ipr_ioarcb_ata_regs** %3, align 8
  %29 = getelementptr inbounds %struct.ipr_ioarcb_ata_regs, %struct.ipr_ioarcb_ata_regs* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %31 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ipr_ioarcb_ata_regs*, %struct.ipr_ioarcb_ata_regs** %3, align 8
  %34 = getelementptr inbounds %struct.ipr_ioarcb_ata_regs, %struct.ipr_ioarcb_ata_regs* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %36 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ipr_ioarcb_ata_regs*, %struct.ipr_ioarcb_ata_regs** %3, align 8
  %39 = getelementptr inbounds %struct.ipr_ioarcb_ata_regs, %struct.ipr_ioarcb_ata_regs* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %41 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ipr_ioarcb_ata_regs*, %struct.ipr_ioarcb_ata_regs** %3, align 8
  %44 = getelementptr inbounds %struct.ipr_ioarcb_ata_regs, %struct.ipr_ioarcb_ata_regs* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %46 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ipr_ioarcb_ata_regs*, %struct.ipr_ioarcb_ata_regs** %3, align 8
  %49 = getelementptr inbounds %struct.ipr_ioarcb_ata_regs, %struct.ipr_ioarcb_ata_regs* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %51 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ipr_ioarcb_ata_regs*, %struct.ipr_ioarcb_ata_regs** %3, align 8
  %54 = getelementptr inbounds %struct.ipr_ioarcb_ata_regs, %struct.ipr_ioarcb_ata_regs* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %56 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ipr_ioarcb_ata_regs*, %struct.ipr_ioarcb_ata_regs** %3, align 8
  %59 = getelementptr inbounds %struct.ipr_ioarcb_ata_regs, %struct.ipr_ioarcb_ata_regs* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %61 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ipr_ioarcb_ata_regs*, %struct.ipr_ioarcb_ata_regs** %3, align 8
  %64 = getelementptr inbounds %struct.ipr_ioarcb_ata_regs, %struct.ipr_ioarcb_ata_regs* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %66 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ipr_ioarcb_ata_regs*, %struct.ipr_ioarcb_ata_regs** %3, align 8
  %69 = getelementptr inbounds %struct.ipr_ioarcb_ata_regs, %struct.ipr_ioarcb_ata_regs* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
