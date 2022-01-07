; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_mbox_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_mbox_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@BFI_IOC_MSGLEN_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_ioc_mbox_send(%struct.bfa_ioc_s* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.bfa_ioc_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %7, align 8
  %11 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bfa_trc(%struct.bfa_ioc_s* %11, i32 %14)
  %16 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @bfa_trc(%struct.bfa_ioc_s* %16, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @BFI_IOC_MSGLEN_MAX, align 4
  %21 = icmp sgt i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %47, %3
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = udiv i64 %28, 4
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %24
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cpu_to_le32(i32 %36)
  %38 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %39 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = add i64 %41, %44
  %46 = call i32 @writel(i32 %37, i64 %45)
  br label %47

47:                                               ; preds = %31
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %24

50:                                               ; preds = %24
  br label %51

51:                                               ; preds = %68, %50
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = load i32, i32* @BFI_IOC_MSGLEN_MAX, align 4
  %55 = sext i32 %54 to i64
  %56 = udiv i64 %55, 4
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %51
  %59 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %60 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = add i64 %62, %65
  %67 = call i32 @writel(i32 0, i64 %66)
  br label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %51

71:                                               ; preds = %51
  %72 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %73 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @writel(i32 1, i64 %75)
  %77 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %78 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @readl(i64 %80)
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
