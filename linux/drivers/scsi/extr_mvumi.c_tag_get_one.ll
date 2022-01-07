; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_tag_get_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_tag_get_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { i32 }
%struct.mvumi_tag = type { i64, i16* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.mvumi_hba*, %struct.mvumi_tag*)* @tag_get_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @tag_get_one(%struct.mvumi_hba* %0, %struct.mvumi_tag* %1) #0 {
  %3 = alloca %struct.mvumi_hba*, align 8
  %4 = alloca %struct.mvumi_tag*, align 8
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %3, align 8
  store %struct.mvumi_tag* %1, %struct.mvumi_tag** %4, align 8
  %5 = load %struct.mvumi_tag*, %struct.mvumi_tag** %4, align 8
  %6 = getelementptr inbounds %struct.mvumi_tag, %struct.mvumi_tag* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ule i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.mvumi_tag*, %struct.mvumi_tag** %4, align 8
  %12 = getelementptr inbounds %struct.mvumi_tag, %struct.mvumi_tag* %11, i32 0, i32 1
  %13 = load i16*, i16** %12, align 8
  %14 = load %struct.mvumi_tag*, %struct.mvumi_tag** %4, align 8
  %15 = getelementptr inbounds %struct.mvumi_tag, %struct.mvumi_tag* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = getelementptr inbounds i16, i16* %13, i64 %17
  %19 = load i16, i16* %18, align 2
  ret i16 %19
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
