; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh.c_cache_batch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh.c_cache_batch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmh_ctrlr = type { i32, i32 }
%struct.batch_cache_req = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpmh_ctrlr*, %struct.batch_cache_req*)* @cache_batch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_batch(%struct.rpmh_ctrlr* %0, %struct.batch_cache_req* %1) #0 {
  %3 = alloca %struct.rpmh_ctrlr*, align 8
  %4 = alloca %struct.batch_cache_req*, align 8
  %5 = alloca i64, align 8
  store %struct.rpmh_ctrlr* %0, %struct.rpmh_ctrlr** %3, align 8
  store %struct.batch_cache_req* %1, %struct.batch_cache_req** %4, align 8
  %6 = load %struct.rpmh_ctrlr*, %struct.rpmh_ctrlr** %3, align 8
  %7 = getelementptr inbounds %struct.rpmh_ctrlr, %struct.rpmh_ctrlr* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.batch_cache_req*, %struct.batch_cache_req** %4, align 8
  %11 = getelementptr inbounds %struct.batch_cache_req, %struct.batch_cache_req* %10, i32 0, i32 0
  %12 = load %struct.rpmh_ctrlr*, %struct.rpmh_ctrlr** %3, align 8
  %13 = getelementptr inbounds %struct.rpmh_ctrlr, %struct.rpmh_ctrlr* %12, i32 0, i32 1
  %14 = call i32 @list_add_tail(i32* %11, i32* %13)
  %15 = load %struct.rpmh_ctrlr*, %struct.rpmh_ctrlr** %3, align 8
  %16 = getelementptr inbounds %struct.rpmh_ctrlr, %struct.rpmh_ctrlr* %15, i32 0, i32 0
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* %16, i64 %17)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
