; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_tty.c_sclp_eval_cpmsu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_tty.c_sclp_eval_cpmsu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gds_vector = type { i32, i64 }

@GDS_ID_TEXTCMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gds_vector*)* @sclp_eval_cpmsu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sclp_eval_cpmsu(%struct.gds_vector* %0) #0 {
  %2 = alloca %struct.gds_vector*, align 8
  %3 = alloca i8*, align 8
  store %struct.gds_vector* %0, %struct.gds_vector** %2, align 8
  %4 = load %struct.gds_vector*, %struct.gds_vector** %2, align 8
  %5 = bitcast %struct.gds_vector* %4 to i8*
  %6 = load %struct.gds_vector*, %struct.gds_vector** %2, align 8
  %7 = getelementptr inbounds %struct.gds_vector, %struct.gds_vector* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = getelementptr i8, i8* %5, i64 %9
  store i8* %10, i8** %3, align 8
  %11 = load %struct.gds_vector*, %struct.gds_vector** %2, align 8
  %12 = getelementptr inbounds %struct.gds_vector, %struct.gds_vector* %11, i64 1
  store %struct.gds_vector* %12, %struct.gds_vector** %2, align 8
  br label %13

13:                                               ; preds = %28, %1
  %14 = load %struct.gds_vector*, %struct.gds_vector** %2, align 8
  %15 = bitcast %struct.gds_vector* %14 to i8*
  %16 = load i8*, i8** %3, align 8
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %13
  %19 = load %struct.gds_vector*, %struct.gds_vector** %2, align 8
  %20 = getelementptr inbounds %struct.gds_vector, %struct.gds_vector* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @GDS_ID_TEXTCMD, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.gds_vector*, %struct.gds_vector** %2, align 8
  %26 = call i32 @sclp_eval_textcmd(%struct.gds_vector* %25)
  br label %27

27:                                               ; preds = %24, %18
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.gds_vector*, %struct.gds_vector** %2, align 8
  %30 = bitcast %struct.gds_vector* %29 to i8*
  %31 = load %struct.gds_vector*, %struct.gds_vector** %2, align 8
  %32 = getelementptr inbounds %struct.gds_vector, %struct.gds_vector* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr i8, i8* %30, i64 %34
  %36 = bitcast i8* %35 to %struct.gds_vector*
  store %struct.gds_vector* %36, %struct.gds_vector** %2, align 8
  br label %13

37:                                               ; preds = %13
  ret void
}

declare dso_local i32 @sclp_eval_textcmd(%struct.gds_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
