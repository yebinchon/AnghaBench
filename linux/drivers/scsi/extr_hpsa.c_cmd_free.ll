; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_cmd_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_cmd_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i64, %struct.CommandList* }
%struct.CommandList = type { i32 }

@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, %struct.CommandList*)* @cmd_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_free(%struct.ctlr_info* %0, %struct.CommandList* %1) #0 {
  %3 = alloca %struct.ctlr_info*, align 8
  %4 = alloca %struct.CommandList*, align 8
  %5 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %3, align 8
  store %struct.CommandList* %1, %struct.CommandList** %4, align 8
  %6 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %7 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %6, i32 0, i32 0
  %8 = call i64 @atomic_dec_and_test(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %2
  %11 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %12 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %13 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %12, i32 0, i32 1
  %14 = load %struct.CommandList*, %struct.CommandList** %13, align 8
  %15 = ptrtoint %struct.CommandList* %11 to i64
  %16 = ptrtoint %struct.CommandList* %14 to i64
  %17 = sub i64 %15, %16
  %18 = sdiv exact i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @BITS_PER_LONG, align 4
  %22 = sub nsw i32 %21, 1
  %23 = and i32 %20, %22
  %24 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %25 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @BITS_PER_LONG, align 4
  %29 = sdiv i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %26, %30
  %32 = call i32 @clear_bit(i32 %23, i64 %31)
  br label %33

33:                                               ; preds = %10, %2
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @clear_bit(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
