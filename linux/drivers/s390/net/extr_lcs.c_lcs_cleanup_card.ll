; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_cleanup_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_cleanup_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_card = type { i32, i32, i32* }

@setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"cleancrd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lcs_card*)* @lcs_cleanup_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcs_cleanup_card(%struct.lcs_card* %0) #0 {
  %2 = alloca %struct.lcs_card*, align 8
  store %struct.lcs_card* %0, %struct.lcs_card** %2, align 8
  %3 = load i32, i32* @setup, align 4
  %4 = call i32 @LCS_DBF_TEXT(i32 3, i32 %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @setup, align 4
  %6 = call i32 @LCS_DBF_HEX(i32 2, i32 %5, %struct.lcs_card** %2, i32 8)
  %7 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %8 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %13 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @free_netdev(i32* %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %18 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %17, i32 0, i32 1
  %19 = call i32 @lcs_cleanup_channel(i32* %18)
  %20 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %21 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %20, i32 0, i32 0
  %22 = call i32 @lcs_cleanup_channel(i32* %21)
  ret void
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @LCS_DBF_HEX(i32, i32, %struct.lcs_card**, i32) #1

declare dso_local i32 @free_netdev(i32*) #1

declare dso_local i32 @lcs_cleanup_channel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
