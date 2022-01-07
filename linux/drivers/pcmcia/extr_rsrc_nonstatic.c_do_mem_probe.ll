; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_nonstatic.c_do_mem_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_nonstatic.c_do_mem_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, i32, %struct.socket_data* }
%struct.socket_data = type { i32 }
%struct.resource = type opaque
%struct.resource.0 = type opaque
%struct.resource.1 = type opaque

@.str = private unnamed_addr constant [34 x i8] c"cs: memory probe 0x%06lx-0x%06lx:\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" excluding\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c" %#05lx-%#05lx\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" clean\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*, i32, i32, i32 (%struct.pcmcia_socket*, %struct.resource*, i32*)*, i32 (%struct.pcmcia_socket*, %struct.resource.0*, i32*)*)* @do_mem_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_mem_probe(%struct.pcmcia_socket* %0, i32 %1, i32 %2, i32 (%struct.pcmcia_socket*, %struct.resource*, i32*)* %3, i32 (%struct.pcmcia_socket*, %struct.resource.0*, i32*)* %4) #0 {
  %6 = alloca %struct.pcmcia_socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32 (%struct.pcmcia_socket*, %struct.resource*, i32*)*, align 8
  %10 = alloca i32 (%struct.pcmcia_socket*, %struct.resource.0*, i32*)*, align 8
  %11 = alloca %struct.socket_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 (%struct.pcmcia_socket*, %struct.resource*, i32*)* %3, i32 (%struct.pcmcia_socket*, %struct.resource*, i32*)** %9, align 8
  store i32 (%struct.pcmcia_socket*, %struct.resource.0*, i32*)* %4, i32 (%struct.pcmcia_socket*, %struct.resource.0*, i32*)** %10, align 8
  %17 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %18 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %17, i32 0, i32 2
  %19 = load %struct.socket_data*, %struct.socket_data** %18, align 8
  store %struct.socket_data* %19, %struct.socket_data** %11, align 8
  %20 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %21 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %20, i32 0, i32 1
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %23, %24
  %26 = sub nsw i32 %25, 1
  %27 = call i32 @dev_info(i32* %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26)
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 131072
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  br label %35

31:                                               ; preds = %5
  %32 = load i32, i32* %8, align 4
  %33 = ashr i32 %32, 4
  %34 = and i32 %33, -8192
  br label %35

35:                                               ; preds = %31, %30
  %36 = phi i32 [ 8192, %30 ], [ %34, %31 ]
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp sgt i32 %37, 8388608
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 8388608, i32* %16, align 4
  br label %40

40:                                               ; preds = %39, %35
  %41 = load i32, i32* %16, align 4
  %42 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %43 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 2, %44
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %49 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 2, %50
  store i32 %51, i32* %16, align 4
  br label %52

52:                                               ; preds = %47, %40
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %13, align 4
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %154, %52
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %56, %57
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %158

60:                                               ; preds = %54
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %98, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %81, %63
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %67, %68
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %65
  %72 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load i32 (%struct.pcmcia_socket*, %struct.resource*, i32*)*, i32 (%struct.pcmcia_socket*, %struct.resource*, i32*)** %9, align 8
  %76 = bitcast i32 (%struct.pcmcia_socket*, %struct.resource*, i32*)* %75 to i32 (%struct.pcmcia_socket*, %struct.resource.1*, i32*)*
  %77 = call i32 @do_validate_mem(%struct.pcmcia_socket* %72, i32 %73, i32 %74, i32 (%struct.pcmcia_socket*, %struct.resource.1*, i32*)* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %71
  br label %85

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %13, align 4
  br label %65

85:                                               ; preds = %79, %65
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %91, %92
  %94 = icmp eq i32 %90, %93
  br label %95

95:                                               ; preds = %89, %85
  %96 = phi i1 [ false, %85 ], [ %94, %89 ]
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %15, align 4
  br label %98

98:                                               ; preds = %95, %60
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %127

101:                                              ; preds = %98
  %102 = load i32 (%struct.pcmcia_socket*, %struct.resource.0*, i32*)*, i32 (%struct.pcmcia_socket*, %struct.resource.0*, i32*)** %10, align 8
  %103 = icmp ne i32 (%struct.pcmcia_socket*, %struct.resource.0*, i32*)* %102, null
  br i1 %103, label %104, label %127

104:                                              ; preds = %101
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %13, align 4
  br label %106

106:                                              ; preds = %122, %104
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %108, %109
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %106
  %113 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %16, align 4
  %116 = load i32 (%struct.pcmcia_socket*, %struct.resource.0*, i32*)*, i32 (%struct.pcmcia_socket*, %struct.resource.0*, i32*)** %10, align 8
  %117 = bitcast i32 (%struct.pcmcia_socket*, %struct.resource.0*, i32*)* %116 to i32 (%struct.pcmcia_socket*, %struct.resource.1*, i32*)*
  %118 = call i32 @do_validate_mem(%struct.pcmcia_socket* %113, i32 %114, i32 %115, i32 (%struct.pcmcia_socket*, %struct.resource.1*, i32*)* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %112
  br label %126

121:                                              ; preds = %112
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %13, align 4
  br label %106

126:                                              ; preds = %120, %106
  br label %127

127:                                              ; preds = %126, %101, %98
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %13, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %153

131:                                              ; preds = %127
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %131
  %135 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %131
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %13, align 4
  %139 = sub nsw i32 %138, 1
  %140 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %137, i32 %139)
  %141 = load %struct.socket_data*, %struct.socket_data** %11, align 8
  %142 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %141, i32 0, i32 0
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %12, align 4
  %146 = sub nsw i32 %144, %145
  %147 = call i32 @sub_interval(i32* %142, i32 %143, i32 %146)
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %12, align 4
  %150 = sub nsw i32 %148, %149
  %151 = load i32, i32* %14, align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* %14, align 4
  br label %153

153:                                              ; preds = %136, %127
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* %16, align 4
  %157 = add nsw i32 %155, %156
  store i32 %157, i32* %12, align 4
  br label %54

158:                                              ; preds = %54
  %159 = load i32, i32* %14, align 4
  %160 = icmp ne i32 %159, 0
  %161 = xor i1 %160, true
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %164 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %163)
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %14, align 4
  %167 = sub nsw i32 %165, %166
  ret i32 %167
}

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @do_validate_mem(%struct.pcmcia_socket*, i32, i32, i32 (%struct.pcmcia_socket*, %struct.resource.1*, i32*)*) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @sub_interval(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
