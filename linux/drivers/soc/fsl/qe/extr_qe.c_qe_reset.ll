; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_qe.c_qe_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_qe.c_qe_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qe_immr = common dso_local global i32* null, align 8
@QE_IMMAP_SIZE = common dso_local global i32 0, align 4
@QE_RESET = common dso_local global i32 0, align 4
@QE_CR_SUBBLOCK_INVALID = common dso_local global i32 0, align 4
@QE_CR_PROTOCOL_UNSPECIFIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"sdma init failed!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qe_reset() #0 {
  %1 = load i32*, i32** @qe_immr, align 8
  %2 = icmp eq i32* %1, null
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = call i32 (...) @get_qe_base()
  %5 = load i32, i32* @QE_IMMAP_SIZE, align 4
  %6 = call i32* @ioremap(i32 %4, i32 %5)
  store i32* %6, i32** @qe_immr, align 8
  br label %7

7:                                                ; preds = %3, %0
  %8 = call i32 (...) @qe_snums_init()
  %9 = load i32, i32* @QE_RESET, align 4
  %10 = load i32, i32* @QE_CR_SUBBLOCK_INVALID, align 4
  %11 = load i32, i32* @QE_CR_PROTOCOL_UNSPECIFIED, align 4
  %12 = call i32 @qe_issue_cmd(i32 %9, i32 %10, i32 %11, i32 0)
  %13 = call i32 (...) @qe_muram_init()
  %14 = call i64 (...) @qe_sdma_init()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %7
  %17 = call i32 @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %7
  ret void
}

declare dso_local i32* @ioremap(i32, i32) #1

declare dso_local i32 @get_qe_base(...) #1

declare dso_local i32 @qe_snums_init(...) #1

declare dso_local i32 @qe_issue_cmd(i32, i32, i32, i32) #1

declare dso_local i32 @qe_muram_init(...) #1

declare dso_local i64 @qe_sdma_init(...) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
