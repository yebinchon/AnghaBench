; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_init_copperhead_memio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_init_copperhead_memio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@IPS_MAX_POST_BYTES = common dso_local global i32 0, align 4
@IPS_MAX_CONFIG_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ips_init_copperhead_memio\00", align 1
@IPS_REG_HISR = common dso_local global i64 0, align 8
@IPS_BIT_GHI = common dso_local global i32 0, align 4
@IPS_ONE_SEC = common dso_local global i32 0, align 4
@IPS_REG_ISPR = common dso_local global i64 0, align 8
@IPS_GOOD_POST_STATUS = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"reset controller fails (post status %x %x).\0A\00", align 1
@IPS_REG_CBSP = common dso_local global i64 0, align 8
@IPS_BIT_OP = common dso_local global i32 0, align 4
@IPS_REG_CCCR = common dso_local global i64 0, align 8
@IPS_BIT_EBM = common dso_local global i32 0, align 4
@IPS_REG_SCPR = common dso_local global i64 0, align 8
@IPS_REVID_TROMBONE64 = common dso_local global i64 0, align 8
@IPS_REG_NDAE = common dso_local global i64 0, align 8
@IPS_BIT_EI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @ips_init_copperhead_memio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_init_copperhead_memio(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 0, i32* %4, align 4
  %12 = load i32, i32* @IPS_MAX_POST_BYTES, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32, i32* @IPS_MAX_CONFIG_BYTES, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %19 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %67, %1
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @IPS_MAX_POST_BYTES, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %70

24:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %43, %24
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 45
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IPS_REG_HISR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readb(i64 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @IPS_BIT_GHI, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %46

40:                                               ; preds = %28
  %41 = load i32, i32* @IPS_ONE_SEC, align 4
  %42 = call i32 @MDELAY(i32 %41)
  br label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %10, align 4
  br label %25

46:                                               ; preds = %39, %25
  %47 = load i32, i32* %10, align 4
  %48 = icmp sge i32 %47, 45
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %198

50:                                               ; preds = %46
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IPS_REG_ISPR, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @readb(i64 %55)
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %15, i64 %58
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IPS_REG_HISR, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writeb(i32 %60, i64 %65)
  br label %67

67:                                               ; preds = %50
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %20

70:                                               ; preds = %20
  %71 = getelementptr inbounds i32, i32* %15, i64 0
  %72 = load i32, i32* %71, align 16
  %73 = load i32, i32* @IPS_GOOD_POST_STATUS, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = load i32, i32* @KERN_WARNING, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds i32, i32* %15, i64 0
  %81 = load i32, i32* %80, align 16
  %82 = getelementptr inbounds i32, i32* %15, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @IPS_PRINTK(i32 %76, %struct.TYPE_5__* %79, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %83)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %198

85:                                               ; preds = %70
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %133, %85
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @IPS_MAX_CONFIG_BYTES, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %136

90:                                               ; preds = %86
  store i32 0, i32* %10, align 4
  br label %91

91:                                               ; preds = %109, %90
  %92 = load i32, i32* %10, align 4
  %93 = icmp slt i32 %92, 240
  br i1 %93, label %94, label %112

94:                                               ; preds = %91
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @IPS_REG_HISR, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @readb(i64 %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @IPS_BIT_GHI, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %94
  br label %112

106:                                              ; preds = %94
  %107 = load i32, i32* @IPS_ONE_SEC, align 4
  %108 = call i32 @MDELAY(i32 %107)
  br label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %91

112:                                              ; preds = %105, %91
  %113 = load i32, i32* %10, align 4
  %114 = icmp sge i32 %113, 240
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %198

116:                                              ; preds = %112
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @IPS_REG_ISPR, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @readb(i64 %121)
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %18, i64 %124
  store i32 %122, i32* %125, align 4
  %126 = load i32, i32* %4, align 4
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @IPS_REG_HISR, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @writeb(i32 %126, i64 %131)
  br label %133

133:                                              ; preds = %116
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %86

136:                                              ; preds = %86
  store i32 0, i32* %9, align 4
  br label %137

137:                                              ; preds = %155, %136
  %138 = load i32, i32* %9, align 4
  %139 = icmp slt i32 %138, 240
  br i1 %139, label %140, label %158

140:                                              ; preds = %137
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @IPS_REG_CBSP, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i32 @readb(i64 %145)
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* @IPS_BIT_OP, align 4
  %149 = and i32 %147, %148
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %140
  br label %158

152:                                              ; preds = %140
  %153 = load i32, i32* @IPS_ONE_SEC, align 4
  %154 = call i32 @MDELAY(i32 %153)
  br label %155

155:                                              ; preds = %152
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %9, align 4
  br label %137

158:                                              ; preds = %151, %137
  %159 = load i32, i32* %9, align 4
  %160 = icmp sge i32 %159, 240
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %198

162:                                              ; preds = %158
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @IPS_REG_CCCR, align 8
  %167 = add nsw i64 %165, %166
  %168 = call i32 @writel(i32 4112, i64 %167)
  %169 = load i32, i32* @IPS_BIT_EBM, align 4
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @IPS_REG_SCPR, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @writeb(i32 %169, i64 %174)
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %190

183:                                              ; preds = %162
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @IPS_REG_NDAE, align 8
  %188 = add nsw i64 %186, %187
  %189 = call i32 @writel(i32 0, i64 %188)
  br label %190

190:                                              ; preds = %183, %162
  %191 = load i32, i32* @IPS_BIT_EI, align 4
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @IPS_REG_HISR, align 8
  %196 = add nsw i64 %194, %195
  %197 = call i32 @writeb(i32 %191, i64 %196)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %198

198:                                              ; preds = %190, %161, %115, %75, %49
  %199 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %199)
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @METHOD_TRACE(i8*, i32) #2

declare dso_local i32 @readb(i64) #2

declare dso_local i32 @MDELAY(i32) #2

declare dso_local i32 @writeb(i32, i64) #2

declare dso_local i32 @IPS_PRINTK(i32, %struct.TYPE_5__*, i8*, i32, i32) #2

declare dso_local i32 @writel(i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
