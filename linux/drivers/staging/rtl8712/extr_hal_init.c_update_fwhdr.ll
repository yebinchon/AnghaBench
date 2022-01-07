; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_hal_init.c_update_fwhdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_hal_init.c_update_fwhdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_hdr = type { i8*, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_hdr*, i32*)* @update_fwhdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_fwhdr(%struct.fw_hdr* %0, i32* %1) #0 {
  %3 = alloca %struct.fw_hdr*, align 8
  %4 = alloca i32*, align 8
  store %struct.fw_hdr* %0, %struct.fw_hdr** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %5, align 4
  %7 = call i8* @le16_to_cpu(i32 %6)
  %8 = load %struct.fw_hdr*, %struct.fw_hdr** %3, align 8
  %9 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %8, i32 0, i32 5
  store i8* %7, i8** %9, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 2
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @le16_to_cpu(i32 %12)
  %14 = load %struct.fw_hdr*, %struct.fw_hdr** %3, align 8
  %15 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %14, i32 0, i32 4
  store i8* %13, i8** %15, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 4
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @le32_to_cpu(i32 %18)
  %20 = load %struct.fw_hdr*, %struct.fw_hdr** %3, align 8
  %21 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 8
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @le32_to_cpu(i32 %24)
  %26 = load %struct.fw_hdr*, %struct.fw_hdr** %3, align 8
  %27 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 12
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @le32_to_cpu(i32 %30)
  %32 = load %struct.fw_hdr*, %struct.fw_hdr** %3, align 8
  %33 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 16
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @le32_to_cpu(i32 %36)
  %38 = load %struct.fw_hdr*, %struct.fw_hdr** %3, align 8
  %39 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  ret void
}

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
