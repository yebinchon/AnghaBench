; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_base.c_of_map_rid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_base.c_of_map_rid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%pOF: Error: Bad %s length: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"%pOF: Invalid %s translation - %s-mask (0x%x) ignores rid-base (0x%x)\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [92 x i8] c"%pOF: %s, using mask %08x, rid-base: %08x, out-base: %08x, length: %08x, rid: %08x -> %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"%pOF: no %s translation for rid 0x%x on %pOF\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_map_rid(%struct.device_node* %0, i32 %1, i8* %2, i8* %3, %struct.device_node** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.device_node**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.device_node*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.device_node** %4, %struct.device_node*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %17, align 8
  %23 = load %struct.device_node*, %struct.device_node** %8, align 8
  %24 = icmp ne %struct.device_node* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %6
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.device_node**, %struct.device_node*** %12, align 8
  %30 = icmp ne %struct.device_node** %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load i32*, i32** %13, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31, %25, %6
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %201

37:                                               ; preds = %31, %28
  %38 = load %struct.device_node*, %struct.device_node** %8, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = call i32* @of_get_property(%struct.device_node* %38, i8* %39, i32* %16)
  store i32* %40, i32** %17, align 8
  %41 = load i32*, i32** %17, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %37
  %44 = load %struct.device_node**, %struct.device_node*** %12, align 8
  %45 = icmp ne %struct.device_node** %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %201

49:                                               ; preds = %43
  %50 = load i32, i32* %9, align 4
  %51 = load i32*, i32** %13, align 8
  store i32 %50, i32* %51, align 4
  store i32 0, i32* %7, align 4
  br label %201

52:                                               ; preds = %37
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* %16, align 4
  %57 = sext i32 %56 to i64
  %58 = urem i64 %57, 16
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55, %52
  %61 = load %struct.device_node*, %struct.device_node** %8, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* %16, align 4
  %64 = call i32 (i8*, %struct.device_node*, i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.device_node* %61, i8* %62, i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %201

67:                                               ; preds = %55
  store i32 -1, i32* %14, align 4
  %68 = load i8*, i8** %11, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load %struct.device_node*, %struct.device_node** %8, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = call i32 @of_property_read_u32(%struct.device_node* %71, i8* %72, i32* %14)
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %75, %76
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %171, %74
  %79 = load i32, i32* %16, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %178

81:                                               ; preds = %78
  %82 = load i32*, i32** %17, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = call i32 @be32_to_cpup(i32* %83)
  store i32 %84, i32* %19, align 4
  %85 = load i32*, i32** %17, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = call i32 @be32_to_cpup(i32* %86)
  store i32 %87, i32* %20, align 4
  %88 = load i32*, i32** %17, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = call i32 @be32_to_cpup(i32* %89)
  store i32 %90, i32* %21, align 4
  %91 = load i32*, i32** %17, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  %93 = call i32 @be32_to_cpup(i32* %92)
  store i32 %93, i32* %22, align 4
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* %14, align 4
  %96 = xor i32 %95, -1
  %97 = and i32 %94, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %81
  %100 = load %struct.device_node*, %struct.device_node** %8, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %19, align 4
  %105 = call i32 (i8*, %struct.device_node*, i8*, ...) @pr_err(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %100, i8* %101, i8* %102, i32 %103, i32 %104)
  %106 = load i32, i32* @EFAULT, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %7, align 4
  br label %201

108:                                              ; preds = %81
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %19, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %118, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %19, align 4
  %115 = load i32, i32* %22, align 4
  %116 = add nsw i32 %114, %115
  %117 = icmp sge i32 %113, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112, %108
  br label %171

119:                                              ; preds = %112
  %120 = load i32, i32* %20, align 4
  %121 = call %struct.device_node* @of_find_node_by_phandle(i32 %120)
  store %struct.device_node* %121, %struct.device_node** %18, align 8
  %122 = load %struct.device_node*, %struct.device_node** %18, align 8
  %123 = icmp ne %struct.device_node* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %119
  %125 = load i32, i32* @ENODEV, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %7, align 4
  br label %201

127:                                              ; preds = %119
  %128 = load %struct.device_node**, %struct.device_node*** %12, align 8
  %129 = icmp ne %struct.device_node** %128, null
  br i1 %129, label %130, label %147

130:                                              ; preds = %127
  %131 = load %struct.device_node**, %struct.device_node*** %12, align 8
  %132 = load %struct.device_node*, %struct.device_node** %131, align 8
  %133 = icmp ne %struct.device_node* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load %struct.device_node*, %struct.device_node** %18, align 8
  %136 = call i32 @of_node_put(%struct.device_node* %135)
  br label %140

137:                                              ; preds = %130
  %138 = load %struct.device_node*, %struct.device_node** %18, align 8
  %139 = load %struct.device_node**, %struct.device_node*** %12, align 8
  store %struct.device_node* %138, %struct.device_node** %139, align 8
  br label %140

140:                                              ; preds = %137, %134
  %141 = load %struct.device_node**, %struct.device_node*** %12, align 8
  %142 = load %struct.device_node*, %struct.device_node** %141, align 8
  %143 = load %struct.device_node*, %struct.device_node** %18, align 8
  %144 = icmp ne %struct.device_node* %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %171

146:                                              ; preds = %140
  br label %147

147:                                              ; preds = %146, %127
  %148 = load i32*, i32** %13, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %157

150:                                              ; preds = %147
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %19, align 4
  %153 = sub nsw i32 %151, %152
  %154 = load i32, i32* %21, align 4
  %155 = add nsw i32 %153, %154
  %156 = load i32*, i32** %13, align 8
  store i32 %155, i32* %156, align 4
  br label %157

157:                                              ; preds = %150, %147
  %158 = load %struct.device_node*, %struct.device_node** %8, align 8
  %159 = load i8*, i8** %10, align 8
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* %19, align 4
  %162 = load i32, i32* %21, align 4
  %163 = load i32, i32* %22, align 4
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %19, align 4
  %167 = sub nsw i32 %165, %166
  %168 = load i32, i32* %21, align 4
  %169 = add nsw i32 %167, %168
  %170 = call i32 @pr_debug(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %158, i8* %159, i32 %160, i32 %161, i32 %162, i32 %163, i32 %164, i32 %169)
  store i32 0, i32* %7, align 4
  br label %201

171:                                              ; preds = %145, %118
  %172 = load i32, i32* %16, align 4
  %173 = sext i32 %172 to i64
  %174 = sub i64 %173, 16
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %16, align 4
  %176 = load i32*, i32** %17, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 4
  store i32* %177, i32** %17, align 8
  br label %78

178:                                              ; preds = %78
  %179 = load %struct.device_node*, %struct.device_node** %8, align 8
  %180 = load i8*, i8** %10, align 8
  %181 = load i32, i32* %9, align 4
  %182 = load %struct.device_node**, %struct.device_node*** %12, align 8
  %183 = icmp ne %struct.device_node** %182, null
  br i1 %183, label %184, label %191

184:                                              ; preds = %178
  %185 = load %struct.device_node**, %struct.device_node*** %12, align 8
  %186 = load %struct.device_node*, %struct.device_node** %185, align 8
  %187 = icmp ne %struct.device_node* %186, null
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = load %struct.device_node**, %struct.device_node*** %12, align 8
  %190 = load %struct.device_node*, %struct.device_node** %189, align 8
  br label %192

191:                                              ; preds = %184, %178
  br label %192

192:                                              ; preds = %191, %188
  %193 = phi %struct.device_node* [ %190, %188 ], [ null, %191 ]
  %194 = call i32 @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %179, i8* %180, i32 %181, %struct.device_node* %193)
  %195 = load i32*, i32** %13, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load i32, i32* %9, align 4
  %199 = load i32*, i32** %13, align 8
  store i32 %198, i32* %199, align 4
  br label %200

200:                                              ; preds = %197, %192
  store i32 0, i32* %7, align 4
  br label %201

201:                                              ; preds = %200, %157, %124, %99, %60, %49, %46, %34
  %202 = load i32, i32* %7, align 4
  ret i32 %202
}

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @pr_err(i8*, %struct.device_node*, i8*, ...) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local %struct.device_node* @of_find_node_by_phandle(i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @pr_debug(i8*, %struct.device_node*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*, %struct.device_node*, i8*, i32, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
