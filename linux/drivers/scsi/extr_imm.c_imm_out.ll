; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_imm.c_imm_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_imm.c_imm_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i16, i32 }

@DID_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"IMM: returned SCSI status %2x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"IMM: bug in imm_out()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i32)* @imm_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imm_out(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i16, i16* %11, align 4
  store i16 %12, i16* %8, align 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = call i32 @imm_wait(%struct.TYPE_6__* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = and i32 %15, 24
  %17 = icmp ne i32 %16, 8
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = load i32, i32* @DID_ERROR, align 4
  %21 = call i32 @imm_fail(%struct.TYPE_6__* %19, i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 0, i32* %4, align 4
  br label %77

24:                                               ; preds = %3
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %73 [
    i32 131, label %28
    i32 132, label %28
    i32 130, label %28
    i32 129, label %68
    i32 128, label %68
  ]

28:                                               ; preds = %24, %24, %24
  %29 = load i16, i16* %8, align 2
  %30 = call i32 @epp_reset(i16 zeroext %29)
  %31 = load i16, i16* %8, align 2
  %32 = call i32 @w_ctr(i16 zeroext %31, i32 4)
  %33 = load i8*, i8** %6, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = or i64 %34, %36
  %38 = and i64 %37, 3
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %28
  %41 = load i16, i16* %8, align 2
  %42 = zext i16 %41 to i32
  %43 = add nsw i32 %42, 4
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = ashr i32 %45, 2
  %47 = call i32 @outsl(i32 %43, i8* %44, i32 %46)
  br label %55

48:                                               ; preds = %28
  %49 = load i16, i16* %8, align 2
  %50 = zext i16 %49 to i32
  %51 = add nsw i32 %50, 4
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @outsb(i32 %51, i8* %52, i32 %53)
  br label %55

55:                                               ; preds = %48, %40
  %56 = load i16, i16* %8, align 2
  %57 = call i32 @w_ctr(i16 zeroext %56, i32 12)
  %58 = load i16, i16* %8, align 2
  %59 = call i32 @r_str(i16 zeroext %58)
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %9, align 4
  %64 = load i16, i16* %8, align 2
  %65 = call i32 @w_ctr(i16 zeroext %64, i32 12)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = call i32 @ecp_sync(%struct.TYPE_6__* %66)
  br label %75

68:                                               ; preds = %24, %24
  %69 = load i16, i16* %8, align 2
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @imm_byte_out(i16 zeroext %69, i8* %70, i32 %71)
  store i32 %72, i32* %9, align 4
  br label %75

73:                                               ; preds = %24
  %74 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %73, %68, %55
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %18
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @imm_wait(%struct.TYPE_6__*) #1

declare dso_local i32 @imm_fail(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @epp_reset(i16 zeroext) #1

declare dso_local i32 @w_ctr(i16 zeroext, i32) #1

declare dso_local i32 @outsl(i32, i8*, i32) #1

declare dso_local i32 @outsb(i32, i8*, i32) #1

declare dso_local i32 @r_str(i16 zeroext) #1

declare dso_local i32 @ecp_sync(%struct.TYPE_6__*) #1

declare dso_local i32 @imm_byte_out(i16 zeroext, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
