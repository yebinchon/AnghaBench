; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvsi_lib.c_hvsi_check_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvsi_lib.c_hvsi_check_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvsi_priv = type { i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"HVSI@%x: Got packet type %x len %d bytes:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hvsi_priv*)* @hvsi_check_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvsi_check_packet(%struct.hvsi_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hvsi_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hvsi_priv* %0, %struct.hvsi_priv** %3, align 8
  %6 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %7 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 252
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %14 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %13, i32 0, i32 2
  store i32 0, i32* %14, align 4
  %15 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %16 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %15, i32 0, i32 1
  store i32 0, i32* %16, align 8
  store i32 0, i32* %2, align 4
  br label %77

17:                                               ; preds = %1
  %18 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %19 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %24 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %4, align 4
  %28 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %29 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %77

34:                                               ; preds = %17
  %35 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %36 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @pr_devel(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %5, align 4
  switch i32 %41, label %58 [
    i32 130, label %42
    i32 131, label %49
    i32 129, label %52
    i32 128, label %55
  ]

42:                                               ; preds = %34
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 %43, 4
  %45 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %46 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %48 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %47, i32 0, i32 3
  store i32 4, i32* %48, align 8
  store i32 1, i32* %2, align 4
  br label %77

49:                                               ; preds = %34
  %50 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %51 = call i32 @hvsi_got_control(%struct.hvsi_priv* %50)
  br label %58

52:                                               ; preds = %34
  %53 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %54 = call i32 @hvsi_got_query(%struct.hvsi_priv* %53)
  br label %58

55:                                               ; preds = %34
  %56 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %57 = call i32 @hvsi_got_response(%struct.hvsi_priv* %56)
  br label %58

58:                                               ; preds = %34, %55, %52, %49
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %61 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %65 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %68 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %74 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @memmove(i32* %66, i32* %72, i32 %75)
  store i32 1, i32* %2, align 4
  br label %77

77:                                               ; preds = %58, %42, %33, %12
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @pr_devel(i8*, i32, i32, i32) #1

declare dso_local i32 @hvsi_got_control(%struct.hvsi_priv*) #1

declare dso_local i32 @hvsi_got_query(%struct.hvsi_priv*) #1

declare dso_local i32 @hvsi_got_response(%struct.hvsi_priv*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
