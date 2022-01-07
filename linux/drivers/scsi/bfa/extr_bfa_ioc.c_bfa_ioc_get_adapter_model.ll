; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_get_adapter_model.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_get_adapter_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { %struct.TYPE_2__, %struct.bfi_ioc_attr_s* }
%struct.TYPE_2__ = type { i32 }
%struct.bfi_ioc_attr_s = type { i32 }

@BFA_ADAPTER_MODEL_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s-%u-%u%s\00", align 1
@BFA_MFG_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s-%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_ioc_get_adapter_model(%struct.bfa_ioc_s* %0, i8* %1) #0 {
  %3 = alloca %struct.bfa_ioc_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfi_ioc_attr_s*, align 8
  %6 = alloca i32, align 4
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %8 = call i32 @bfa_ioc_get_nports(%struct.bfa_ioc_s* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* @BFA_ADAPTER_MODEL_NAME_LEN, align 4
  %16 = call i32 @memset(i8* %14, i32 0, i32 %15)
  %17 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %18 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %17, i32 0, i32 1
  %19 = load %struct.bfi_ioc_attr_s*, %struct.bfi_ioc_attr_s** %18, align 8
  store %struct.bfi_ioc_attr_s* %19, %struct.bfi_ioc_attr_s** %5, align 8
  %20 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %21 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @bfa_asic_id_ct2(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %2
  %27 = load %struct.bfi_ioc_attr_s*, %struct.bfi_ioc_attr_s** %5, align 8
  %28 = getelementptr inbounds %struct.bfi_ioc_attr_s, %struct.bfi_ioc_attr_s* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bfa_mfg_is_mezz(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %26
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* @BFA_ADAPTER_MODEL_NAME_LEN, align 4
  %35 = load i8*, i8** @BFA_MFG_NAME, align 8
  %36 = load %struct.bfi_ioc_attr_s*, %struct.bfi_ioc_attr_s** %5, align 8
  %37 = getelementptr inbounds %struct.bfi_ioc_attr_s, %struct.bfi_ioc_attr_s* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i8*, i32, i8*, i8*, i32, ...) @snprintf(i8* %33, i32 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %38, i32 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %49

41:                                               ; preds = %26, %2
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* @BFA_ADAPTER_MODEL_NAME_LEN, align 4
  %44 = load i8*, i8** @BFA_MFG_NAME, align 8
  %45 = load %struct.bfi_ioc_attr_s*, %struct.bfi_ioc_attr_s** %5, align 8
  %46 = getelementptr inbounds %struct.bfi_ioc_attr_s, %struct.bfi_ioc_attr_s* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, i32, i8*, i8*, i32, ...) @snprintf(i8* %42, i32 %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %44, i32 %47)
  br label %49

49:                                               ; preds = %41, %32
  ret void
}

declare dso_local i32 @bfa_ioc_get_nports(%struct.bfa_ioc_s*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @bfa_asic_id_ct2(i32) #1

declare dso_local i32 @bfa_mfg_is_mezz(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
