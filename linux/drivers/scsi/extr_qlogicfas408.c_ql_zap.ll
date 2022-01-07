; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicfas408.c_ql_zap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicfas408.c_ql_zap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlogicfas408_priv = type { i32, i32 }

@REG0 = common dso_local global i32 0, align 4
@REG1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlogicfas408_priv*)* @ql_zap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_zap(%struct.qlogicfas408_priv* %0) #0 {
  %2 = alloca %struct.qlogicfas408_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qlogicfas408_priv* %0, %struct.qlogicfas408_priv** %2, align 8
  %6 = load %struct.qlogicfas408_priv*, %struct.qlogicfas408_priv** %2, align 8
  %7 = getelementptr inbounds %struct.qlogicfas408_priv, %struct.qlogicfas408_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.qlogicfas408_priv*, %struct.qlogicfas408_priv** %2, align 8
  %10 = getelementptr inbounds %struct.qlogicfas408_priv, %struct.qlogicfas408_priv* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, 13
  %14 = call i32 @inb(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @REG0, align 4
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 3
  %18 = call i32 @outb(i32 3, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 3
  %21 = call i32 @outb(i32 2, i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, 128
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @REG1, align 4
  br label %27

27:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
