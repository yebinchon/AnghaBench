; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_debug.h_cdns3_decode_ep_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_debug.h_cdns3_decode_ep_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"IRQ for %s: %08x \00", align 1
@EP_STS_SETUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"SETUP \00", align 1
@EP_STS_IOC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"IOC \00", align 1
@EP_STS_ISP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"ISP \00", align 1
@EP_STS_DESCMIS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"DESCMIS \00", align 1
@EP_STS_STREAMR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"STREAMR \00", align 1
@EP_STS_MD_EXIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"MD_EXIT \00", align 1
@EP_STS_TRBERR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"TRBERR \00", align 1
@EP_STS_NRDY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"NRDY \00", align 1
@EP_STS_PRIME = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"PRIME \00", align 1
@EP_STS_SIDERR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"SIDERRT \00", align 1
@EP_STS_OUTSMM = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"OUTSMM \00", align 1
@EP_STS_ISOERR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"ISOERR \00", align 1
@EP_STS_IOT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"IOT \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i8*)* @cdns3_decode_ep_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cdns3_decode_ep_irq(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @EP_STS_SETUP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = call i32 (i8*, i8*, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %16, %3
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @EP_STS_IOC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = call i32 (i8*, i8*, ...) @sprintf(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %29, %24
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @EP_STS_ISP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = call i32 (i8*, i8*, ...) @sprintf(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %42, %37
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @EP_STS_DESCMIS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load i8*, i8** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = call i32 (i8*, i8*, ...) @sprintf(i8* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %55, %50
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @EP_STS_STREAMR, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load i8*, i8** %4, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = call i32 (i8*, i8*, ...) @sprintf(i8* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %68, %63
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @EP_STS_MD_EXIT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load i8*, i8** %4, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = call i32 (i8*, i8*, ...) @sprintf(i8* %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %81, %76
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @EP_STS_TRBERR, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load i8*, i8** %4, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = call i32 (i8*, i8*, ...) @sprintf(i8* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %94, %89
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @EP_STS_NRDY, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = load i8*, i8** %4, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = call i32 (i8*, i8*, ...) @sprintf(i8* %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %107, %102
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @EP_STS_PRIME, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = load i8*, i8** %4, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = call i32 (i8*, i8*, ...) @sprintf(i8* %124, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %120, %115
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @EP_STS_SIDERR, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %128
  %134 = load i8*, i8** %4, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = call i32 (i8*, i8*, ...) @sprintf(i8* %137, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %133, %128
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @EP_STS_OUTSMM, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %141
  %147 = load i8*, i8** %4, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = call i32 (i8*, i8*, ...) @sprintf(i8* %150, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %7, align 4
  br label %154

154:                                              ; preds = %146, %141
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* @EP_STS_ISOERR, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %154
  %160 = load i8*, i8** %4, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = call i32 (i8*, i8*, ...) @sprintf(i8* %163, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %159, %154
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* @EP_STS_IOT, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %167
  %173 = load i8*, i8** %4, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %173, i64 %175
  %177 = call i32 (i8*, i8*, ...) @sprintf(i8* %176, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %178 = load i32, i32* %7, align 4
  %179 = add nsw i32 %178, %177
  store i32 %179, i32* %7, align 4
  br label %180

180:                                              ; preds = %172, %167
  %181 = load i8*, i8** %4, align 8
  ret i8* %181
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
