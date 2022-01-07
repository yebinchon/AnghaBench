; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec.c_parse_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec.c_parse_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvec_chip = type { i32, i32 }
%struct.nvec_msg = type { i32* }

@.str = private unnamed_addr constant [19 x i8] c"ec responded %*ph\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"ec system event \00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvec_chip*, %struct.nvec_msg*)* @parse_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_msg(%struct.nvec_chip* %0, %struct.nvec_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvec_chip*, align 8
  %5 = alloca %struct.nvec_msg*, align 8
  store %struct.nvec_chip* %0, %struct.nvec_chip** %4, align 8
  store %struct.nvec_msg* %1, %struct.nvec_msg** %5, align 8
  %6 = load %struct.nvec_msg*, %struct.nvec_msg** %5, align 8
  %7 = getelementptr inbounds %struct.nvec_msg, %struct.nvec_msg* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 128
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load %struct.nvec_msg*, %struct.nvec_msg** %5, align 8
  %15 = getelementptr inbounds %struct.nvec_msg, %struct.nvec_msg* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 3
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %13
  %21 = load %struct.nvec_chip*, %struct.nvec_chip** %4, align 8
  %22 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nvec_msg*, %struct.nvec_msg** %5, align 8
  %25 = getelementptr inbounds %struct.nvec_msg, %struct.nvec_msg* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 4, i32* %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %72

30:                                               ; preds = %13, %2
  %31 = load %struct.nvec_msg*, %struct.nvec_msg** %5, align 8
  %32 = getelementptr inbounds %struct.nvec_msg, %struct.nvec_msg* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 7
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %59

38:                                               ; preds = %30
  %39 = load %struct.nvec_msg*, %struct.nvec_msg** %5, align 8
  %40 = getelementptr inbounds %struct.nvec_msg, %struct.nvec_msg* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 15
  %45 = icmp eq i32 %44, 5
  br i1 %45, label %46, label %59

46:                                               ; preds = %38
  %47 = load i32, i32* @KERN_WARNING, align 4
  %48 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %49 = load %struct.nvec_msg*, %struct.nvec_msg** %5, align 8
  %50 = getelementptr inbounds %struct.nvec_msg, %struct.nvec_msg* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.nvec_msg*, %struct.nvec_msg** %5, align 8
  %53 = getelementptr inbounds %struct.nvec_msg, %struct.nvec_msg* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 2
  %58 = call i32 @print_hex_dump(i32 %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 16, i32 1, i32* %51, i32 %57, i32 1)
  br label %59

59:                                               ; preds = %46, %38, %30
  %60 = load %struct.nvec_chip*, %struct.nvec_chip** %4, align 8
  %61 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %60, i32 0, i32 0
  %62 = load %struct.nvec_msg*, %struct.nvec_msg** %5, align 8
  %63 = getelementptr inbounds %struct.nvec_msg, %struct.nvec_msg* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 143
  %68 = load %struct.nvec_msg*, %struct.nvec_msg** %5, align 8
  %69 = getelementptr inbounds %struct.nvec_msg, %struct.nvec_msg* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @atomic_notifier_call_chain(i32* %61, i32 %67, i32* %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %59, %20
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @dev_err(i32, i8*, i32, i32*) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @atomic_notifier_call_chain(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
