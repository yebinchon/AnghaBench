; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_tag_release_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_tag_release_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { i32 }
%struct.mvumi_tag = type { i64, i64, i16* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvumi_hba*, %struct.mvumi_tag*, i16)* @tag_release_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tag_release_one(%struct.mvumi_hba* %0, %struct.mvumi_tag* %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.mvumi_hba*, align 8
  %5 = alloca %struct.mvumi_tag*, align 8
  %6 = alloca i16, align 2
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %4, align 8
  store %struct.mvumi_tag* %1, %struct.mvumi_tag** %5, align 8
  store i16 %2, i16* %6, align 2
  %7 = load %struct.mvumi_tag*, %struct.mvumi_tag** %5, align 8
  %8 = getelementptr inbounds %struct.mvumi_tag, %struct.mvumi_tag* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.mvumi_tag*, %struct.mvumi_tag** %5, align 8
  %11 = getelementptr inbounds %struct.mvumi_tag, %struct.mvumi_tag* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %9, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load i16, i16* %6, align 2
  %17 = load %struct.mvumi_tag*, %struct.mvumi_tag** %5, align 8
  %18 = getelementptr inbounds %struct.mvumi_tag, %struct.mvumi_tag* %17, i32 0, i32 2
  %19 = load i16*, i16** %18, align 8
  %20 = load %struct.mvumi_tag*, %struct.mvumi_tag** %5, align 8
  %21 = getelementptr inbounds %struct.mvumi_tag, %struct.mvumi_tag* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = getelementptr inbounds i16, i16* %19, i64 %22
  store i16 %16, i16* %24, align 2
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
