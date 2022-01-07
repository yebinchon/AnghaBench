; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_core.c_st95hf_error_handling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_core.c_st95hf_error_handling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st95hf_context = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.sk_buff = type { i32* }

@ST95HF_ERR_MASK = common dso_local global i32 0, align 4
@ST95HF_TIMEOUT_ERROR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TRFLAG_NFCA_STD_FRAME_CRC = common dso_local global i32 0, align 4
@ST95HF_NFCA_CRC_ERR_MASK = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [33 x i8] c"CRC error, byte received = 0x%x\0A\00", align 1
@ST95HF_NFCB_CRC_ERR_MASK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st95hf_context*, %struct.sk_buff*, i32)* @st95hf_error_handling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st95hf_error_handling(%struct.st95hf_context* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.st95hf_context*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca %struct.device*, align 8
  store %struct.st95hf_context* %0, %struct.st95hf_context** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %12 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %10, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ST95HF_ERR_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ST95HF_TIMEOUT_ERROR, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* @ETIMEDOUT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %37

34:                                               ; preds = %23
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %98

39:                                               ; preds = %3
  %40 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %41 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %96 [
    i32 130, label %43
    i32 129, label %73
    i32 128, label %73
  ]

43:                                               ; preds = %39
  %44 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %45 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @TRFLAG_NFCA_STD_FRAME_CRC, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %43
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 %53, 3
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %9, align 1
  %59 = load i8, i8* %9, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* @ST95HF_NFCA_CRC_ERR_MASK, align 1
  %62 = zext i8 %61 to i32
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %49
  %66 = load %struct.device*, %struct.device** %10, align 8
  %67 = load i8, i8* %9, align 1
  %68 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8 zeroext %67)
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %65, %49
  br label %72

72:                                               ; preds = %71, %43
  br label %96

73:                                               ; preds = %39, %39
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %9, align 1
  %83 = load i8, i8* %9, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* @ST95HF_NFCB_CRC_ERR_MASK, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 %84, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %73
  %90 = load %struct.device*, %struct.device** %10, align 8
  %91 = load i8, i8* %9, align 1
  %92 = call i32 @dev_err(%struct.device* %90, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8 zeroext %91)
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %89, %73
  br label %96

96:                                               ; preds = %39, %95, %72
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %37
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
