; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_pingpong.c_pp_mask_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_pingpong.c_pp_mask_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_ctx*)* @pp_mask_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp_mask_events(%struct.pp_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pp_ctx* %0, %struct.pp_ctx** %3, align 8
  %7 = load %struct.pp_ctx*, %struct.pp_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ntb_db_valid_mask(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.pp_ctx*, %struct.pp_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @ntb_db_set_mask(i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %42

20:                                               ; preds = %1
  %21 = load %struct.pp_ctx*, %struct.pp_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ntb_msg_count(i32 %23)
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %42

27:                                               ; preds = %20
  %28 = load %struct.pp_ctx*, %struct.pp_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ntb_msg_outbits(i32 %30)
  %32 = load %struct.pp_ctx*, %struct.pp_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ntb_msg_inbits(i32 %34)
  %36 = or i32 %31, %35
  store i32 %36, i32* %5, align 4
  %37 = load %struct.pp_ctx*, %struct.pp_ctx** %3, align 8
  %38 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ntb_msg_set_mask(i32 %39, i32 %40)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %27, %26, %18
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @ntb_db_valid_mask(i32) #1

declare dso_local i32 @ntb_db_set_mask(i32, i32) #1

declare dso_local i32 @ntb_msg_count(i32) #1

declare dso_local i32 @ntb_msg_outbits(i32) #1

declare dso_local i32 @ntb_msg_inbits(i32) #1

declare dso_local i32 @ntb_msg_set_mask(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
