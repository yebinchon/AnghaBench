; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_msi_test.c_ntb_msit_link_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_msi_test.c_ntb_msit_link_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_msit_ctx = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ntb_msit_link_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_msit_link_event(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ntb_msit_ctx*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ntb_msit_ctx*
  store %struct.ntb_msit_ctx* %5, %struct.ntb_msit_ctx** %3, align 8
  %6 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ntb_link_is_up(i32 %8, i32* null, i32* null)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %13, i32 0, i32 0
  %15 = call i32 @schedule_work(i32* %14)
  br label %16

16:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @ntb_link_is_up(i32, i32*, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
