; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_ntb_link_is_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_ntb_link_is_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_dev = type { i32 }
%struct.idt_ntb_dev = type { i8 }

@IDT_NT_PCIELCTLSTS = common dso_local global i32 0, align 4
@PCIELCTLSTS_CLS = common dso_local global i32 0, align 4
@PCIELCTLSTS_NLW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.ntb_dev*, i32*, i32*)* @idt_ntb_link_is_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @idt_ntb_link_is_up(%struct.ntb_dev* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.ntb_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.idt_ntb_dev*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store %struct.ntb_dev* %0, %struct.ntb_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %13 = call %struct.idt_ntb_dev* @to_ndev_ntb(%struct.ntb_dev* %12)
  store %struct.idt_ntb_dev* %13, %struct.idt_ntb_dev** %8, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %16, %3
  %20 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %8, align 8
  %21 = load i32, i32* @IDT_NT_PCIELCTLSTS, align 4
  %22 = call i32 @idt_nt_read(%struct.idt_ntb_dev* %20, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i32, i32* @PCIELCTLSTS_CLS, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @GET_FIELD(i32 %26, i32 %27)
  %29 = load i32*, i32** %6, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %25, %19
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* @PCIELCTLSTS_NLW, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @GET_FIELD(i32 %34, i32 %35)
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %33, %30
  br label %39

39:                                               ; preds = %38, %16
  %40 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %8, align 8
  %41 = call i32 @idt_ntb_local_link_is_up(%struct.idt_ntb_dev* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  store i8 0, i8* %4, align 1
  br label %72

44:                                               ; preds = %39
  store i8 0, i8* %10, align 1
  store i8 0, i8* %9, align 1
  br label %45

45:                                               ; preds = %67, %44
  %46 = load i8, i8* %9, align 1
  %47 = zext i8 %46 to i32
  %48 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %8, align 8
  %49 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %48, i32 0, i32 0
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp slt i32 %47, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %45
  %54 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %8, align 8
  %55 = load i8, i8* %9, align 1
  %56 = call i64 @idt_ntb_peer_link_is_up(%struct.idt_ntb_dev* %54, i8 zeroext %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load i8, i8* %9, align 1
  %60 = zext i8 %59 to i32
  %61 = shl i32 1, %60
  %62 = load i8, i8* %10, align 1
  %63 = zext i8 %62 to i32
  %64 = or i32 %63, %61
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %10, align 1
  br label %66

66:                                               ; preds = %58, %53
  br label %67

67:                                               ; preds = %66
  %68 = load i8, i8* %9, align 1
  %69 = add i8 %68, 1
  store i8 %69, i8* %9, align 1
  br label %45

70:                                               ; preds = %45
  %71 = load i8, i8* %10, align 1
  store i8 %71, i8* %4, align 1
  br label %72

72:                                               ; preds = %70, %43
  %73 = load i8, i8* %4, align 1
  ret i8 %73
}

declare dso_local %struct.idt_ntb_dev* @to_ndev_ntb(%struct.ntb_dev*) #1

declare dso_local i32 @idt_nt_read(%struct.idt_ntb_dev*, i32) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i32 @idt_ntb_local_link_is_up(%struct.idt_ntb_dev*) #1

declare dso_local i64 @idt_ntb_peer_link_is_up(%struct.idt_ntb_dev*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
