; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_ep_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_ep_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_endpoint = type { %struct.cxgbi_endpoint* }
%struct.cxgbi_endpoint = type { %struct.cxgbi_sock* }
%struct.cxgbi_sock = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgbi_ep_poll(%struct.iscsi_endpoint* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_endpoint*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cxgbi_endpoint*, align 8
  %7 = alloca %struct.cxgbi_sock*, align 8
  store %struct.iscsi_endpoint* %0, %struct.iscsi_endpoint** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %4, align 8
  %9 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %8, i32 0, i32 0
  %10 = load %struct.cxgbi_endpoint*, %struct.cxgbi_endpoint** %9, align 8
  store %struct.cxgbi_endpoint* %10, %struct.cxgbi_endpoint** %6, align 8
  %11 = load %struct.cxgbi_endpoint*, %struct.cxgbi_endpoint** %6, align 8
  %12 = getelementptr inbounds %struct.cxgbi_endpoint, %struct.cxgbi_endpoint* %11, i32 0, i32 0
  %13 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %12, align 8
  store %struct.cxgbi_sock* %13, %struct.cxgbi_sock** %7, align 8
  %14 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %15 = call i32 @cxgbi_sock_is_established(%struct.cxgbi_sock* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %19

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @cxgbi_sock_is_established(%struct.cxgbi_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
