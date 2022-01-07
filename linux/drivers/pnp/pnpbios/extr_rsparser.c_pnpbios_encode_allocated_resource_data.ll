; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/pnpbios/extr_rsparser.c_pnpbios_encode_allocated_resource_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/pnpbios/extr_rsparser.c_pnpbios_encode_allocated_resource_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }

@LARGE_TAG = common dso_local global i8 0, align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@IORESOURCE_DMA = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unknown tag %#x length %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"no end tag in resource structure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.pnp_dev*, i8*, i8*)* @pnpbios_encode_allocated_resource_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pnpbios_encode_allocated_resource_data(%struct.pnp_dev* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pnp_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pnp_dev* %0, %struct.pnp_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %199

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %194, %17
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %22, label %195

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @LARGE_TAG, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %22
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl i32 %35, 8
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %36, %40
  store i32 %41, i32* %8, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  store i32 %45, i32* %9, align 4
  br label %58

46:                                               ; preds = %22
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 7
  store i32 %51, i32* %8, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = ashr i32 %55, 3
  %57 = and i32 %56, 15
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %46, %31
  %59 = load i32, i32* %9, align 4
  switch i32 %59, label %166 [
    i32 135, label %60
    i32 134, label %74
    i32 136, label %88
    i32 130, label %102
    i32 133, label %119
    i32 129, label %133
    i32 128, label %147
    i32 131, label %148
    i32 132, label %162
  ]

60:                                               ; preds = %58
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 9
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %167

64:                                               ; preds = %60
  %65 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %68 = load i32, i32* @IORESOURCE_MEM, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @pnp_get_resource(%struct.pnp_dev* %67, i32 %68, i32 %69)
  %71 = call i32 @pnpbios_encode_mem(%struct.pnp_dev* %65, i8* %66, i32 %70)
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %13, align 4
  br label %173

74:                                               ; preds = %58
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 17
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %167

78:                                               ; preds = %74
  %79 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %82 = load i32, i32* @IORESOURCE_MEM, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @pnp_get_resource(%struct.pnp_dev* %81, i32 %82, i32 %83)
  %85 = call i32 @pnpbios_encode_mem32(%struct.pnp_dev* %79, i8* %80, i32 %84)
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %173

88:                                               ; preds = %58
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 9
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %167

92:                                               ; preds = %88
  %93 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %96 = load i32, i32* @IORESOURCE_MEM, align 4
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @pnp_get_resource(%struct.pnp_dev* %95, i32 %96, i32 %97)
  %99 = call i32 @pnpbios_encode_fixed_mem32(%struct.pnp_dev* %93, i8* %94, i32 %98)
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %13, align 4
  br label %173

102:                                              ; preds = %58
  %103 = load i32, i32* %8, align 4
  %104 = icmp ult i32 %103, 2
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %8, align 4
  %107 = icmp ugt i32 %106, 3
  br i1 %107, label %108, label %109

108:                                              ; preds = %105, %102
  br label %167

109:                                              ; preds = %105
  %110 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %113 = load i32, i32* @IORESOURCE_IRQ, align 4
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @pnp_get_resource(%struct.pnp_dev* %112, i32 %113, i32 %114)
  %116 = call i32 @pnpbios_encode_irq(%struct.pnp_dev* %110, i8* %111, i32 %115)
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %173

119:                                              ; preds = %58
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 2
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %167

123:                                              ; preds = %119
  %124 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %125 = load i8*, i8** %6, align 8
  %126 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %127 = load i32, i32* @IORESOURCE_DMA, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @pnp_get_resource(%struct.pnp_dev* %126, i32 %127, i32 %128)
  %130 = call i32 @pnpbios_encode_dma(%struct.pnp_dev* %124, i8* %125, i32 %129)
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %12, align 4
  br label %173

133:                                              ; preds = %58
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 7
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  br label %167

137:                                              ; preds = %133
  %138 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %139 = load i8*, i8** %6, align 8
  %140 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %141 = load i32, i32* @IORESOURCE_IO, align 4
  %142 = load i32, i32* %10, align 4
  %143 = call i32 @pnp_get_resource(%struct.pnp_dev* %140, i32 %141, i32 %142)
  %144 = call i32 @pnpbios_encode_port(%struct.pnp_dev* %138, i8* %139, i32 %143)
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %10, align 4
  br label %173

147:                                              ; preds = %58
  br label %173

148:                                              ; preds = %58
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 3
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  br label %167

152:                                              ; preds = %148
  %153 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %154 = load i8*, i8** %6, align 8
  %155 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %156 = load i32, i32* @IORESOURCE_IO, align 4
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @pnp_get_resource(%struct.pnp_dev* %155, i32 %156, i32 %157)
  %159 = call i32 @pnpbios_encode_fixed_port(%struct.pnp_dev* %153, i8* %154, i32 %158)
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %10, align 4
  br label %173

162:                                              ; preds = %58
  %163 = load i8*, i8** %6, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 2
  store i8* %164, i8** %6, align 8
  %165 = load i8*, i8** %6, align 8
  store i8* %165, i8** %4, align 8
  br label %199

166:                                              ; preds = %58
  br label %167

167:                                              ; preds = %166, %151, %136, %122, %108, %91, %77, %63
  %168 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %169 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %168, i32 0, i32 0
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* %8, align 4
  %172 = call i32 (i32*, i8*, ...) @dev_err(i32* %169, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %167, %152, %147, %137, %123, %109, %92, %78, %64
  %174 = load i8*, i8** %6, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 0
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = load i8, i8* @LARGE_TAG, align 1
  %179 = zext i8 %178 to i32
  %180 = and i32 %177, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %173
  %183 = load i32, i32* %8, align 4
  %184 = add i32 %183, 3
  %185 = load i8*, i8** %6, align 8
  %186 = zext i32 %184 to i64
  %187 = getelementptr inbounds i8, i8* %185, i64 %186
  store i8* %187, i8** %6, align 8
  br label %194

188:                                              ; preds = %173
  %189 = load i32, i32* %8, align 4
  %190 = add i32 %189, 1
  %191 = load i8*, i8** %6, align 8
  %192 = zext i32 %190 to i64
  %193 = getelementptr inbounds i8, i8* %191, i64 %192
  store i8* %193, i8** %6, align 8
  br label %194

194:                                              ; preds = %188, %182
  br label %18

195:                                              ; preds = %18
  %196 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %197 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %196, i32 0, i32 0
  %198 = call i32 (i32*, i8*, ...) @dev_err(i32* %197, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  br label %199

199:                                              ; preds = %195, %162, %16
  %200 = load i8*, i8** %4, align 8
  ret i8* %200
}

declare dso_local i32 @pnpbios_encode_mem(%struct.pnp_dev*, i8*, i32) #1

declare dso_local i32 @pnp_get_resource(%struct.pnp_dev*, i32, i32) #1

declare dso_local i32 @pnpbios_encode_mem32(%struct.pnp_dev*, i8*, i32) #1

declare dso_local i32 @pnpbios_encode_fixed_mem32(%struct.pnp_dev*, i8*, i32) #1

declare dso_local i32 @pnpbios_encode_irq(%struct.pnp_dev*, i8*, i32) #1

declare dso_local i32 @pnpbios_encode_dma(%struct.pnp_dev*, i8*, i32) #1

declare dso_local i32 @pnpbios_encode_port(%struct.pnp_dev*, i8*, i32) #1

declare dso_local i32 @pnpbios_encode_fixed_port(%struct.pnp_dev*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
