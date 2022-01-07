; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_debug.c_qtnf_debugfs_add_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_debug.c_qtnf_debugfs_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_bus = type { i32, i32 }
%struct.seq_file = type opaque
%struct.seq_file.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qtnf_debugfs_add_entry(%struct.qtnf_bus* %0, i8* %1, i32 (%struct.seq_file*, i8*)* %2) #0 {
  %4 = alloca %struct.qtnf_bus*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32 (%struct.seq_file*, i8*)*, align 8
  store %struct.qtnf_bus* %0, %struct.qtnf_bus** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 (%struct.seq_file*, i8*)* %2, i32 (%struct.seq_file*, i8*)** %6, align 8
  %7 = load %struct.qtnf_bus*, %struct.qtnf_bus** %4, align 8
  %8 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = load %struct.qtnf_bus*, %struct.qtnf_bus** %4, align 8
  %12 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32 (%struct.seq_file*, i8*)*, i32 (%struct.seq_file*, i8*)** %6, align 8
  %15 = bitcast i32 (%struct.seq_file*, i8*)* %14 to i32 (%struct.seq_file.0*, i8*)*
  %16 = call i32 @debugfs_create_devm_seqfile(i32 %9, i8* %10, i32 %13, i32 (%struct.seq_file.0*, i8*)* %15)
  ret void
}

declare dso_local i32 @debugfs_create_devm_seqfile(i32, i8*, i32, i32 (%struct.seq_file.0*, i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
