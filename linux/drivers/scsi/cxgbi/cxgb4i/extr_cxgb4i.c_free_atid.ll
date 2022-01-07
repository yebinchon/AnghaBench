; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_free_atid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_free_atid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i32, i32 }
%struct.cxgb4_lld_info = type { i32 }

@CTPF_HAS_ATID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_sock*)* @free_atid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_atid(%struct.cxgbi_sock* %0) #0 {
  %2 = alloca %struct.cxgbi_sock*, align 8
  %3 = alloca %struct.cxgb4_lld_info*, align 8
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %2, align 8
  %4 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %5 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.cxgb4_lld_info* @cxgbi_cdev_priv(i32 %6)
  store %struct.cxgb4_lld_info* %7, %struct.cxgb4_lld_info** %3, align 8
  %8 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %9 = load i32, i32* @CTPF_HAS_ATID, align 4
  %10 = call i64 @cxgbi_sock_flag(%struct.cxgbi_sock* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %3, align 8
  %14 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %17 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @cxgb4_free_atid(i32 %15, i32 %18)
  %20 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %21 = load i32, i32* @CTPF_HAS_ATID, align 4
  %22 = call i32 @cxgbi_sock_clear_flag(%struct.cxgbi_sock* %20, i32 %21)
  %23 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %24 = call i32 @cxgbi_sock_put(%struct.cxgbi_sock* %23)
  br label %25

25:                                               ; preds = %12, %1
  ret void
}

declare dso_local %struct.cxgb4_lld_info* @cxgbi_cdev_priv(i32) #1

declare dso_local i64 @cxgbi_sock_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @cxgb4_free_atid(i32, i32) #1

declare dso_local i32 @cxgbi_sock_clear_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @cxgbi_sock_put(%struct.cxgbi_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
