; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_scsi_tape_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_scsi_tape_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kref = type { i32 }
%struct.scsi_tape = type { %struct.scsi_tape*, %struct.scsi_tape*, %struct.scsi_tape*, i32*, %struct.gendisk* }
%struct.gendisk = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kref*)* @scsi_tape_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_tape_release(%struct.kref* %0) #0 {
  %2 = alloca %struct.kref*, align 8
  %3 = alloca %struct.scsi_tape*, align 8
  %4 = alloca %struct.gendisk*, align 8
  store %struct.kref* %0, %struct.kref** %2, align 8
  %5 = load %struct.kref*, %struct.kref** %2, align 8
  %6 = call %struct.scsi_tape* @to_scsi_tape(%struct.kref* %5)
  store %struct.scsi_tape* %6, %struct.scsi_tape** %3, align 8
  %7 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %7, i32 0, i32 4
  %9 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  store %struct.gendisk* %9, %struct.gendisk** %4, align 8
  %10 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %11 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %10, i32 0, i32 3
  store i32* null, i32** %11, align 8
  %12 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %12, i32 0, i32 1
  %14 = load %struct.scsi_tape*, %struct.scsi_tape** %13, align 8
  %15 = icmp ne %struct.scsi_tape* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  %17 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %17, i32 0, i32 1
  %19 = load %struct.scsi_tape*, %struct.scsi_tape** %18, align 8
  %20 = call i32 @normalize_buffer(%struct.scsi_tape* %19)
  %21 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %22 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %21, i32 0, i32 1
  %23 = load %struct.scsi_tape*, %struct.scsi_tape** %22, align 8
  %24 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %23, i32 0, i32 2
  %25 = load %struct.scsi_tape*, %struct.scsi_tape** %24, align 8
  %26 = call i32 @kfree(%struct.scsi_tape* %25)
  %27 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %28 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %27, i32 0, i32 1
  %29 = load %struct.scsi_tape*, %struct.scsi_tape** %28, align 8
  %30 = call i32 @kfree(%struct.scsi_tape* %29)
  br label %31

31:                                               ; preds = %16, %1
  %32 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %33 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  %34 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %35 = call i32 @put_disk(%struct.gendisk* %34)
  %36 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %37 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %36, i32 0, i32 0
  %38 = load %struct.scsi_tape*, %struct.scsi_tape** %37, align 8
  %39 = call i32 @kfree(%struct.scsi_tape* %38)
  %40 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %41 = call i32 @kfree(%struct.scsi_tape* %40)
  ret void
}

declare dso_local %struct.scsi_tape* @to_scsi_tape(%struct.kref*) #1

declare dso_local i32 @normalize_buffer(%struct.scsi_tape*) #1

declare dso_local i32 @kfree(%struct.scsi_tape*) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
