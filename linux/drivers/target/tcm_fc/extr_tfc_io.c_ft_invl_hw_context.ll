; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/tcm_fc/extr_tfc_io.c_ft_invl_hw_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/tcm_fc/extr_tfc_io.c_ft_invl_hw_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ft_cmd = type { i64, i32, %struct.fc_seq* }
%struct.fc_seq = type { i32 }
%struct.fc_exch = type { i64, %struct.fc_lport* }
%struct.fc_lport = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.fc_lport.0*, i64)* }
%struct.fc_lport.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ft_invl_hw_context(%struct.ft_cmd* %0) #0 {
  %2 = alloca %struct.ft_cmd*, align 8
  %3 = alloca %struct.fc_seq*, align 8
  %4 = alloca %struct.fc_exch*, align 8
  %5 = alloca %struct.fc_lport*, align 8
  store %struct.ft_cmd* %0, %struct.ft_cmd** %2, align 8
  store %struct.fc_exch* null, %struct.fc_exch** %4, align 8
  store %struct.fc_lport* null, %struct.fc_lport** %5, align 8
  %6 = load %struct.ft_cmd*, %struct.ft_cmd** %2, align 8
  %7 = icmp ne %struct.ft_cmd* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.ft_cmd*, %struct.ft_cmd** %2, align 8
  %12 = getelementptr inbounds %struct.ft_cmd, %struct.ft_cmd* %11, i32 0, i32 2
  %13 = load %struct.fc_seq*, %struct.fc_seq** %12, align 8
  store %struct.fc_seq* %13, %struct.fc_seq** %3, align 8
  %14 = load %struct.ft_cmd*, %struct.ft_cmd** %2, align 8
  %15 = getelementptr inbounds %struct.ft_cmd, %struct.ft_cmd* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %57

18:                                               ; preds = %1
  %19 = load %struct.fc_seq*, %struct.fc_seq** %3, align 8
  %20 = icmp ne %struct.fc_seq* %19, null
  br i1 %20, label %21, label %57

21:                                               ; preds = %18
  %22 = load %struct.fc_seq*, %struct.fc_seq** %3, align 8
  %23 = call %struct.fc_exch* @fc_seq_exch(%struct.fc_seq* %22)
  store %struct.fc_exch* %23, %struct.fc_exch** %4, align 8
  %24 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %25 = icmp ne %struct.fc_exch* %24, null
  br i1 %25, label %26, label %56

26:                                               ; preds = %21
  %27 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %28 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %27, i32 0, i32 1
  %29 = load %struct.fc_lport*, %struct.fc_lport** %28, align 8
  store %struct.fc_lport* %29, %struct.fc_lport** %5, align 8
  %30 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %31 = icmp ne %struct.fc_lport* %30, null
  br i1 %31, label %32, label %55

32:                                               ; preds = %26
  %33 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %34 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %37 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sle i64 %35, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %32
  %41 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %42 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.fc_lport.0*, i64)*, i32 (%struct.fc_lport.0*, i64)** %43, align 8
  %45 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %46 = bitcast %struct.fc_lport* %45 to %struct.fc_lport.0*
  %47 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %48 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 %44(%struct.fc_lport.0* %46, i64 %49)
  %51 = load %struct.ft_cmd*, %struct.ft_cmd** %2, align 8
  %52 = getelementptr inbounds %struct.ft_cmd, %struct.ft_cmd* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.ft_cmd*, %struct.ft_cmd** %2, align 8
  %54 = getelementptr inbounds %struct.ft_cmd, %struct.ft_cmd* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %40, %32, %26
  br label %56

56:                                               ; preds = %55, %21
  br label %57

57:                                               ; preds = %56, %18, %1
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.fc_exch* @fc_seq_exch(%struct.fc_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
