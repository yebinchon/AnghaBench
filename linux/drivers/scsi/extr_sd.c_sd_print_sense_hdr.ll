; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_print_sense_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_print_sense_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.scsi_sense_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_disk*, %struct.scsi_sense_hdr*)* @sd_print_sense_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_print_sense_hdr(%struct.scsi_disk* %0, %struct.scsi_sense_hdr* %1) #0 {
  %3 = alloca %struct.scsi_disk*, align 8
  %4 = alloca %struct.scsi_sense_hdr*, align 8
  store %struct.scsi_disk* %0, %struct.scsi_disk** %3, align 8
  store %struct.scsi_sense_hdr* %1, %struct.scsi_sense_hdr** %4, align 8
  %5 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %6 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %12
  %20 = phi i32* [ %17, %12 ], [ null, %18 ]
  %21 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %22 = call i32 @scsi_print_sense_hdr(i32 %7, i32* %20, %struct.scsi_sense_hdr* %21)
  ret void
}

declare dso_local i32 @scsi_print_sense_hdr(i32, i32*, %struct.scsi_sense_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
