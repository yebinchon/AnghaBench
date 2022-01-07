; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_adisc_needs_plogi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_adisc_needs_plogi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_passthru_mad = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.ibmvfc_target = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvfc_passthru_mad*, %struct.ibmvfc_target*)* @ibmvfc_adisc_needs_plogi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvfc_adisc_needs_plogi(%struct.ibmvfc_passthru_mad* %0, %struct.ibmvfc_target* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ibmvfc_passthru_mad*, align 8
  %5 = alloca %struct.ibmvfc_target*, align 8
  store %struct.ibmvfc_passthru_mad* %0, %struct.ibmvfc_passthru_mad** %4, align 8
  store %struct.ibmvfc_target* %1, %struct.ibmvfc_target** %5, align 8
  %6 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %4, align 8
  %7 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 2
  %11 = call i64 @wwn_to_u64(i32* %10)
  %12 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %5, align 8
  %13 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %11, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %45

18:                                               ; preds = %2
  %19 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %4, align 8
  %20 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  %24 = call i64 @wwn_to_u64(i32* %23)
  %25 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %5, align 8
  %26 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %45

31:                                               ; preds = %18
  %32 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %4, align 8
  %33 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 6
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @be32_to_cpu(i32 %37)
  %39 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %5, align 8
  %40 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %45

44:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %43, %30, %17
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @wwn_to_u64(i32*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
