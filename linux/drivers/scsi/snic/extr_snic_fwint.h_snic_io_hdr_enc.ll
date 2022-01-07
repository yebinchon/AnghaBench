; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_fwint.h_snic_io_hdr_enc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_fwint.h_snic_io_hdr_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic_io_hdr = type { i64, i32, i32, i8*, i8*, i64, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snic_io_hdr*, i8*, i8*, i32, i32, i32, i32)* @snic_io_hdr_enc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snic_io_hdr_enc(%struct.snic_io_hdr* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.snic_io_hdr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snic_io_hdr* %0, %struct.snic_io_hdr** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = load %struct.snic_io_hdr*, %struct.snic_io_hdr** %8, align 8
  %17 = getelementptr inbounds %struct.snic_io_hdr, %struct.snic_io_hdr* %16, i32 0, i32 7
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load %struct.snic_io_hdr*, %struct.snic_io_hdr** %8, align 8
  %20 = getelementptr inbounds %struct.snic_io_hdr, %struct.snic_io_hdr* %19, i32 0, i32 6
  store i8* %18, i8** %20, align 8
  %21 = load %struct.snic_io_hdr*, %struct.snic_io_hdr** %8, align 8
  %22 = getelementptr inbounds %struct.snic_io_hdr, %struct.snic_io_hdr* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* %12, align 4
  %24 = call i8* @cpu_to_le32(i32 %23)
  %25 = load %struct.snic_io_hdr*, %struct.snic_io_hdr** %8, align 8
  %26 = getelementptr inbounds %struct.snic_io_hdr, %struct.snic_io_hdr* %25, i32 0, i32 4
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = load %struct.snic_io_hdr*, %struct.snic_io_hdr** %8, align 8
  %30 = getelementptr inbounds %struct.snic_io_hdr, %struct.snic_io_hdr* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @cpu_to_le16(i32 %31)
  %33 = load %struct.snic_io_hdr*, %struct.snic_io_hdr** %8, align 8
  %34 = getelementptr inbounds %struct.snic_io_hdr, %struct.snic_io_hdr* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load %struct.snic_io_hdr*, %struct.snic_io_hdr** %8, align 8
  %37 = getelementptr inbounds %struct.snic_io_hdr, %struct.snic_io_hdr* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.snic_io_hdr*, %struct.snic_io_hdr** %8, align 8
  %39 = getelementptr inbounds %struct.snic_io_hdr, %struct.snic_io_hdr* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
