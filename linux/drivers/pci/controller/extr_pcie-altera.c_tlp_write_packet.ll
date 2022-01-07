; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera.c_tlp_write_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera.c_tlp_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_pcie = type { i32 }
%struct.tlp_rp_regpair_t = type { i64, i8*, i8* }

@RP_TX_SOP = common dso_local global i64 0, align 8
@RP_TX_EOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.altera_pcie*, i8**, i8*, i32)* @tlp_write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tlp_write_packet(%struct.altera_pcie* %0, i8** %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.altera_pcie*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tlp_rp_regpair_t, align 8
  store %struct.altera_pcie* %0, %struct.altera_pcie** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8**, i8*** %6, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds %struct.tlp_rp_regpair_t, %struct.tlp_rp_regpair_t* %9, i32 0, i32 2
  store i8* %12, i8** %13, align 8
  %14 = load i8**, i8*** %6, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds %struct.tlp_rp_regpair_t, %struct.tlp_rp_regpair_t* %9, i32 0, i32 1
  store i8* %16, i8** %17, align 8
  %18 = load i64, i64* @RP_TX_SOP, align 8
  %19 = getelementptr inbounds %struct.tlp_rp_regpair_t, %struct.tlp_rp_regpair_t* %9, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = load %struct.altera_pcie*, %struct.altera_pcie** %5, align 8
  %21 = call i32 @tlp_write_tx(%struct.altera_pcie* %20, %struct.tlp_rp_regpair_t* %9)
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %4
  %25 = load i8**, i8*** %6, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 2
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds %struct.tlp_rp_regpair_t, %struct.tlp_rp_regpair_t* %9, i32 0, i32 2
  store i8* %27, i8** %28, align 8
  %29 = getelementptr inbounds %struct.tlp_rp_regpair_t, %struct.tlp_rp_regpair_t* %9, i32 0, i32 1
  store i8* null, i8** %29, align 8
  %30 = getelementptr inbounds %struct.tlp_rp_regpair_t, %struct.tlp_rp_regpair_t* %9, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.altera_pcie*, %struct.altera_pcie** %5, align 8
  %32 = call i32 @tlp_write_tx(%struct.altera_pcie* %31, %struct.tlp_rp_regpair_t* %9)
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds %struct.tlp_rp_regpair_t, %struct.tlp_rp_regpair_t* %9, i32 0, i32 2
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.tlp_rp_regpair_t, %struct.tlp_rp_regpair_t* %9, i32 0, i32 1
  store i8* null, i8** %35, align 8
  br label %43

36:                                               ; preds = %4
  %37 = load i8**, i8*** %6, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 2
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds %struct.tlp_rp_regpair_t, %struct.tlp_rp_regpair_t* %9, i32 0, i32 2
  store i8* %39, i8** %40, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds %struct.tlp_rp_regpair_t, %struct.tlp_rp_regpair_t* %9, i32 0, i32 1
  store i8* %41, i8** %42, align 8
  br label %43

43:                                               ; preds = %36, %24
  %44 = load i64, i64* @RP_TX_EOP, align 8
  %45 = getelementptr inbounds %struct.tlp_rp_regpair_t, %struct.tlp_rp_regpair_t* %9, i32 0, i32 0
  store i64 %44, i64* %45, align 8
  %46 = load %struct.altera_pcie*, %struct.altera_pcie** %5, align 8
  %47 = call i32 @tlp_write_tx(%struct.altera_pcie* %46, %struct.tlp_rp_regpair_t* %9)
  ret void
}

declare dso_local i32 @tlp_write_tx(%struct.altera_pcie*, %struct.tlp_rp_regpair_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
