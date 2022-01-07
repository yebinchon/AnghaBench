; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_search_disc_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_search_disc_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.scb = type { i32 }

@DISCONNECTED_SCBH = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i64 0, align 8
@SCBPTR = common dso_local global i32 0, align 4
@SCB_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Disconnected List inconsistency. SCB index == %d, yet numscbs == %d.\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"for safety\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Disconnected List Loop. cur SCBPTR == %x, prev SCBPTR == %x.\00", align 1
@ROLE_INITIATOR = common dso_local global i32 0, align 4
@SCB_NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahc_search_disc_list(%struct.ahc_softc* %0, i32 %1, i8 signext %2, i32 %3, i64 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.ahc_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.scb*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8 %2, i8* %11, align 1
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i64 0, i64* %20, align 8
  %23 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %24 = load i32, i32* @DISCONNECTED_SCBH, align 4
  %25 = call i64 @ahc_inb(%struct.ahc_softc* %23, i32 %24)
  store i64 %25, i64* %18, align 8
  %26 = load i64, i64* @SCB_LIST_NULL, align 8
  store i64 %26, i64* %19, align 8
  %27 = load i32, i32* %16, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %8
  %30 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %31 = load i32, i32* @SCBPTR, align 4
  %32 = call i64 @ahc_inb(%struct.ahc_softc* %30, i32 %31)
  store i64 %32, i64* %21, align 8
  br label %35

33:                                               ; preds = %8
  %34 = load i64, i64* @SCB_LIST_NULL, align 8
  store i64 %34, i64* %21, align 8
  br label %35

35:                                               ; preds = %33, %29
  br label %36

36:                                               ; preds = %112, %35
  %37 = load i64, i64* %18, align 8
  %38 = load i64, i64* @SCB_LIST_NULL, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %113

40:                                               ; preds = %36
  %41 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %42 = load i32, i32* @SCBPTR, align 4
  %43 = load i64, i64* %18, align 8
  %44 = call i32 @ahc_outb(%struct.ahc_softc* %41, i32 %42, i64 %43)
  %45 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %46 = load i32, i32* @SCB_TAG, align 4
  %47 = call i64 @ahc_inb(%struct.ahc_softc* %45, i32 %46)
  store i64 %47, i64* %22, align 8
  %48 = load i64, i64* %22, align 8
  %49 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %50 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %48, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %40
  %56 = load i64, i64* %22, align 8
  %57 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %58 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @printk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i64 %56, i64 %61)
  %63 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %64 = call i32 @ahc_dump_card_state(%struct.ahc_softc* %63)
  %65 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %55, %40
  %67 = load i64, i64* %18, align 8
  %68 = load i64, i64* %19, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i64, i64* %18, align 8
  %72 = load i64, i64* %19, align 8
  %73 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i64 %71, i64 %72)
  br label %74

74:                                               ; preds = %70, %66
  %75 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %76 = load i64, i64* %22, align 8
  %77 = call %struct.scb* @ahc_lookup_scb(%struct.ahc_softc* %75, i64 %76)
  store %struct.scb* %77, %struct.scb** %17, align 8
  %78 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %79 = load %struct.scb*, %struct.scb** %17, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i8, i8* %11, align 1
  %82 = load i32, i32* %12, align 4
  %83 = load i64, i64* %13, align 8
  %84 = load i32, i32* @ROLE_INITIATOR, align 4
  %85 = call i64 @ahc_match_scb(%struct.ahc_softc* %78, %struct.scb* %79, i32 %80, i8 signext %81, i32 %82, i64 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %107

87:                                               ; preds = %74
  %88 = load i64, i64* %20, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %20, align 8
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %94 = load i64, i64* %19, align 8
  %95 = load i64, i64* %18, align 8
  %96 = call i64 @ahc_rem_scb_from_disc_list(%struct.ahc_softc* %93, i64 %94, i64 %95)
  store i64 %96, i64* %18, align 8
  br label %102

97:                                               ; preds = %87
  %98 = load i64, i64* %18, align 8
  store i64 %98, i64* %19, align 8
  %99 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %100 = load i32, i32* @SCB_NEXT, align 4
  %101 = call i64 @ahc_inb(%struct.ahc_softc* %99, i32 %100)
  store i64 %101, i64* %18, align 8
  br label %102

102:                                              ; preds = %97, %92
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %113

106:                                              ; preds = %102
  br label %112

107:                                              ; preds = %74
  %108 = load i64, i64* %18, align 8
  store i64 %108, i64* %19, align 8
  %109 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %110 = load i32, i32* @SCB_NEXT, align 4
  %111 = call i64 @ahc_inb(%struct.ahc_softc* %109, i32 %110)
  store i64 %111, i64* %18, align 8
  br label %112

112:                                              ; preds = %107, %106
  br label %36

113:                                              ; preds = %105, %36
  %114 = load i32, i32* %16, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load %struct.ahc_softc*, %struct.ahc_softc** %9, align 8
  %118 = load i32, i32* @SCBPTR, align 4
  %119 = load i64, i64* %21, align 8
  %120 = call i32 @ahc_outb(%struct.ahc_softc* %117, i32 %118, i64 %119)
  br label %121

121:                                              ; preds = %116, %113
  %122 = load i64, i64* %20, align 8
  %123 = trunc i64 %122 to i32
  ret i32 %123
}

declare dso_local i64 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i64) #1

declare dso_local i32 @printk(i8*, i64, i64) #1

declare dso_local i32 @ahc_dump_card_state(%struct.ahc_softc*) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local %struct.scb* @ahc_lookup_scb(%struct.ahc_softc*, i64) #1

declare dso_local i64 @ahc_match_scb(%struct.ahc_softc*, %struct.scb*, i32, i8 signext, i32, i64, i32) #1

declare dso_local i64 @ahc_rem_scb_from_disc_list(%struct.ahc_softc*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
