; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_decode_sense_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_decode_sense_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_sense_hdr = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32*, i32*)* @decode_sense_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_sense_data(i32* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.scsi_sense_hdr, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32*, i32** %8, align 8
  store i32 -1, i32* %13, align 4
  %14 = load i32*, i32** %9, align 8
  store i32 -1, i32* %14, align 4
  %15 = load i32*, i32** %10, align 8
  store i32 -1, i32* %15, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  br label %35

19:                                               ; preds = %5
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @scsi_normalize_sense(i32* %20, i32 %21, %struct.scsi_sense_hdr* %11)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %11, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %8, align 8
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %11, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %11, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %10, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %18, %25, %19
  ret void
}

declare dso_local i32 @scsi_normalize_sense(i32*, i32, %struct.scsi_sense_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
