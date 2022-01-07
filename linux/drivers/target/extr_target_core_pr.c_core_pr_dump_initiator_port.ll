; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pr.c_core_pr_dump_initiator_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pr.c_core_pr_dump_initiator_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t10_pr_registration = type { i8*, i32 }

@.str = private unnamed_addr constant [8 x i8] c",i,0x%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @core_pr_dump_initiator_port(%struct.t10_pr_registration* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.t10_pr_registration*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.t10_pr_registration* %0, %struct.t10_pr_registration** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %4, align 8
  %8 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 0, i8* %13, align 1
  br label %21

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %4, align 8
  %18 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @snprintf(i8* %15, i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %14, %11
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
