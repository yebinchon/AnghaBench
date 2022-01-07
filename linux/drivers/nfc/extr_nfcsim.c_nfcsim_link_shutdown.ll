; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_nfcsim.c_nfcsim_link_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_nfcsim.c_nfcsim_link_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfcsim_link = type { i32, i32, i32 }

@NFCSIM_MODE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfcsim_link*)* @nfcsim_link_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfcsim_link_shutdown(%struct.nfcsim_link* %0) #0 {
  %2 = alloca %struct.nfcsim_link*, align 8
  store %struct.nfcsim_link* %0, %struct.nfcsim_link** %2, align 8
  %3 = load %struct.nfcsim_link*, %struct.nfcsim_link** %2, align 8
  %4 = getelementptr inbounds %struct.nfcsim_link, %struct.nfcsim_link* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.nfcsim_link*, %struct.nfcsim_link** %2, align 8
  %7 = getelementptr inbounds %struct.nfcsim_link, %struct.nfcsim_link* %6, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = load i32, i32* @NFCSIM_MODE_NONE, align 4
  %9 = load %struct.nfcsim_link*, %struct.nfcsim_link** %2, align 8
  %10 = getelementptr inbounds %struct.nfcsim_link, %struct.nfcsim_link* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load %struct.nfcsim_link*, %struct.nfcsim_link** %2, align 8
  %12 = getelementptr inbounds %struct.nfcsim_link, %struct.nfcsim_link* %11, i32 0, i32 1
  %13 = call i32 @mutex_unlock(i32* %12)
  %14 = load %struct.nfcsim_link*, %struct.nfcsim_link** %2, align 8
  %15 = call i32 @nfcsim_link_recv_wake(%struct.nfcsim_link* %14)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nfcsim_link_recv_wake(%struct.nfcsim_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
