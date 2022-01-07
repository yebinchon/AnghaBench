; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_debug.h_cdns3_decode_usb_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_debug.h_cdns3_decode_usb_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"IRQ %08x = \00", align 1
@USB_ISTS_CON2I = common dso_local global i32 0, align 4
@USB_ISTS_CONI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Connection %s\0A\00", align 1
@USB_ISTS_DIS2I = common dso_local global i32 0, align 4
@USB_ISTS_DISI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Disconnection \00", align 1
@USB_ISTS_L2ENTI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"suspended \00", align 1
@USB_ISTS_L1ENTI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"L1 enter \00", align 1
@USB_ISTS_L1EXTI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"L1 exit \00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"L2 enter \00", align 1
@USB_ISTS_L2EXTI = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"L2 exit \00", align 1
@USB_ISTS_U3EXTI = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"U3 exit \00", align 1
@USB_ISTS_UWRESI = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"Warm Reset \00", align 1
@USB_ISTS_UHRESI = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"Hot Reset \00", align 1
@USB_ISTS_U2RESI = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"Reset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32)* @cdns3_decode_usb_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cdns3_decode_usb_irq(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @USB_ISTS_CON2I, align 4
  %13 = load i32, i32* @USB_ISTS_CONI, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i32, i32* %5, align 4
  %23 = call i8* @usb_speed_string(i32 %22)
  %24 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %17, %3
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @USB_ISTS_DIS2I, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @USB_ISTS_DISI, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32, %27
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = call i32 (i8*, i8*, ...) @sprintf(i8* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %37, %32
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @USB_ISTS_L2ENTI, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = call i32 (i8*, i8*, ...) @sprintf(i8* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %50, %45
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @USB_ISTS_L1ENTI, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = call i32 (i8*, i8*, ...) @sprintf(i8* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %63, %58
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @USB_ISTS_L1EXTI, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load i8*, i8** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = call i32 (i8*, i8*, ...) @sprintf(i8* %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %76, %71
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @USB_ISTS_L2ENTI, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load i8*, i8** %4, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = call i32 (i8*, i8*, ...) @sprintf(i8* %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %89, %84
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @USB_ISTS_L2EXTI, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %97
  %103 = load i8*, i8** %4, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = call i32 (i8*, i8*, ...) @sprintf(i8* %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %102, %97
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @USB_ISTS_U3EXTI, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load i8*, i8** %4, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = call i32 (i8*, i8*, ...) @sprintf(i8* %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %115, %110
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @USB_ISTS_UWRESI, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %123
  %129 = load i8*, i8** %4, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = call i32 (i8*, i8*, ...) @sprintf(i8* %132, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %7, align 4
  br label %136

136:                                              ; preds = %128, %123
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @USB_ISTS_UHRESI, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %136
  %142 = load i8*, i8** %4, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = call i32 (i8*, i8*, ...) @sprintf(i8* %145, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %141, %136
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @USB_ISTS_U2RESI, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %149
  %155 = load i8*, i8** %4, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = call i32 (i8*, i8*, ...) @sprintf(i8* %158, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %154, %149
  %163 = load i8*, i8** %4, align 8
  ret i8* %163
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i8* @usb_speed_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
