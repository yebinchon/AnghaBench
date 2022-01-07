; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_filter_by_wwpn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_filter_by_wwpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_nodelist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_nodelist*, i8*)* @lpfc_filter_by_wwpn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_filter_by_wwpn(%struct.lpfc_nodelist* %0, i8* %1) #0 {
  %3 = alloca %struct.lpfc_nodelist*, align 8
  %4 = alloca i8*, align 8
  store %struct.lpfc_nodelist* %0, %struct.lpfc_nodelist** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %6 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %5, i32 0, i32 0
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @memcmp(i32* %6, i8* %7, i32 4)
  %9 = icmp eq i64 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
