; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_vrc4171_card.c_vrc4171_card_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_vrc4171_card.c_vrc4171_card_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"irq:\00", align 1
@nr_irqs = common dso_local global i32 0, align 4
@vrc4171_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"slota:\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"memnoprobe\00", align 1
@SLOT_NOPROBE_MEM = common dso_local global i8* null, align 8
@vrc4171_sockets = common dso_local global %struct.TYPE_2__* null, align 8
@CARD_SLOTA = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"ionoprobe\00", align 1
@SLOT_NOPROBE_IO = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"noprobe\00", align 1
@SLOT_NOPROBE_ALL = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"slotb:\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"pccard\00", align 1
@SLOTB_IS_PCCARD = common dso_local global i32 0, align 4
@vrc4171_slotb = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"cf\00", align 1
@SLOTB_IS_CF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"flashrom\00", align 1
@SLOTB_IS_FLASHROM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@SLOTB_IS_NONE = common dso_local global i32 0, align 4
@CARD_SLOTB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vrc4171_card_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vrc4171_card_setup(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  store i32 1, i32* %2, align 4
  br label %186

13:                                               ; preds = %7
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @strncmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 4
  store i8* %19, i8** %3, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @simple_strtoul(i8* %20, i8** %3, i32 0)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @nr_irqs, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* @vrc4171_irq, align 4
  br label %30

30:                                               ; preds = %28, %24, %17
  %31 = load i8*, i8** %3, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 44
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %186

36:                                               ; preds = %30
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %3, align 8
  br label %39

39:                                               ; preds = %36, %13
  %40 = load i8*, i8** %3, align 8
  %41 = call i64 @strncmp(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %99

43:                                               ; preds = %39
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 6
  store i8* %45, i8** %3, align 8
  %46 = load i8*, i8** %3, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %97

50:                                               ; preds = %43
  %51 = load i8*, i8** %3, align 8
  %52 = call i64 @strncmp(i8* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i8*, i8** @SLOT_NOPROBE_MEM, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vrc4171_sockets, align 8
  %57 = load i64, i64* @CARD_SLOTA, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i8* %55, i8** %59, align 8
  %60 = load i8*, i8** %3, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 10
  store i8* %61, i8** %3, align 8
  br label %88

62:                                               ; preds = %50
  %63 = load i8*, i8** %3, align 8
  %64 = call i64 @strncmp(i8* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 9)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i8*, i8** @SLOT_NOPROBE_IO, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vrc4171_sockets, align 8
  %69 = load i64, i64* @CARD_SLOTA, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i8* %67, i8** %71, align 8
  %72 = load i8*, i8** %3, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 9
  store i8* %73, i8** %3, align 8
  br label %87

74:                                               ; preds = %62
  %75 = load i8*, i8** %3, align 8
  %76 = call i64 @strncmp(i8* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load i8*, i8** @SLOT_NOPROBE_ALL, align 8
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vrc4171_sockets, align 8
  %81 = load i64, i64* @CARD_SLOTA, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i8* %79, i8** %83, align 8
  %84 = load i8*, i8** %3, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 7
  store i8* %85, i8** %3, align 8
  br label %86

86:                                               ; preds = %78, %74
  br label %87

87:                                               ; preds = %86, %66
  br label %88

88:                                               ; preds = %87, %54
  %89 = load i8*, i8** %3, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 44
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 1, i32* %2, align 4
  br label %186

94:                                               ; preds = %88
  %95 = load i8*, i8** %3, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %3, align 8
  br label %98

97:                                               ; preds = %43
  store i32 1, i32* %2, align 4
  br label %186

98:                                               ; preds = %94
  br label %99

99:                                               ; preds = %98, %39
  %100 = load i8*, i8** %3, align 8
  %101 = call i64 @strncmp(i8* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 6)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %185

103:                                              ; preds = %99
  %104 = load i8*, i8** %3, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 6
  store i8* %105, i8** %3, align 8
  %106 = load i8*, i8** %3, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %184

110:                                              ; preds = %103
  %111 = load i8*, i8** %3, align 8
  %112 = call i64 @strncmp(i8* %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 6)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i32, i32* @SLOTB_IS_PCCARD, align 4
  store i32 %115, i32* @vrc4171_slotb, align 4
  %116 = load i8*, i8** %3, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 6
  store i8* %117, i8** %3, align 8
  br label %145

118:                                              ; preds = %110
  %119 = load i8*, i8** %3, align 8
  %120 = call i64 @strncmp(i8* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 2)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i32, i32* @SLOTB_IS_CF, align 4
  store i32 %123, i32* @vrc4171_slotb, align 4
  %124 = load i8*, i8** %3, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 2
  store i8* %125, i8** %3, align 8
  br label %144

126:                                              ; preds = %118
  %127 = load i8*, i8** %3, align 8
  %128 = call i64 @strncmp(i8* %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 8)
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = load i32, i32* @SLOTB_IS_FLASHROM, align 4
  store i32 %131, i32* @vrc4171_slotb, align 4
  %132 = load i8*, i8** %3, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 8
  store i8* %133, i8** %3, align 8
  br label %143

134:                                              ; preds = %126
  %135 = load i8*, i8** %3, align 8
  %136 = call i64 @strncmp(i8* %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 4)
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = load i32, i32* @SLOTB_IS_NONE, align 4
  store i32 %139, i32* @vrc4171_slotb, align 4
  %140 = load i8*, i8** %3, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 4
  store i8* %141, i8** %3, align 8
  br label %142

142:                                              ; preds = %138, %134
  br label %143

143:                                              ; preds = %142, %130
  br label %144

144:                                              ; preds = %143, %122
  br label %145

145:                                              ; preds = %144, %114
  %146 = load i8*, i8** %3, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 44
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  store i32 1, i32* %2, align 4
  br label %186

151:                                              ; preds = %145
  %152 = load i8*, i8** %3, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %3, align 8
  %154 = load i8*, i8** %3, align 8
  %155 = call i64 @strncmp(i8* %154, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %151
  %158 = load i8*, i8** @SLOT_NOPROBE_MEM, align 8
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vrc4171_sockets, align 8
  %160 = load i64, i64* @CARD_SLOTB, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  store i8* %158, i8** %162, align 8
  br label %163

163:                                              ; preds = %157, %151
  %164 = load i8*, i8** %3, align 8
  %165 = call i64 @strncmp(i8* %164, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 9)
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %163
  %168 = load i8*, i8** @SLOT_NOPROBE_IO, align 8
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vrc4171_sockets, align 8
  %170 = load i64, i64* @CARD_SLOTB, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  store i8* %168, i8** %172, align 8
  br label %173

173:                                              ; preds = %167, %163
  %174 = load i8*, i8** %3, align 8
  %175 = call i64 @strncmp(i8* %174, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = load i8*, i8** @SLOT_NOPROBE_ALL, align 8
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vrc4171_sockets, align 8
  %180 = load i64, i64* @CARD_SLOTB, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  store i8* %178, i8** %182, align 8
  br label %183

183:                                              ; preds = %177, %173
  br label %184

184:                                              ; preds = %183, %103
  br label %185

185:                                              ; preds = %184, %99
  store i32 1, i32* %2, align 4
  br label %186

186:                                              ; preds = %185, %150, %97, %93, %35, %12
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
